unit class PDF::FillForms;

use MacOS::NativeLib "*";

sub help is export {
    print qq:to/HERE/;
    Usage: {$*PROGRAM.basename} form=F in=I out=O

    With the form PDF file 'F' and input data file 'I', the 
    desired overlay text is combined with the form data to 
    produce the combination as the output PDF file 'O'.

    The 'form' file must be a scanned PDF file, and the 
    'input' file contains formatted data for the overlay.

    See the README for instructions on creating the 
    formatted text data file.
    HERE
    exit;
}

# Usage: {$*PROGRAM.basename} form=F in=I out=O
sub run(@args) is export {
    my ($form, $in, $out);
    my $debug = 0;
    my @errs;
    for @args {
        when /^ :i [f|fo|for|form] '=' (\S+) / {
            $form = ~$0;
            # must be a readable pdf file
            unless $form.IO.f {
                my $e = "Unable to read form file '$form'";
                @errs.push: $e;
            }
        }
        when /^ :i [i|in] '=' (\S+) / {
            $in = ~$0;
            # must be a readable text file
            unless $in.IO.f {
                my $e = "Unable to read input data file '$in'";
                @errs.push: $e;
            }
        }
        when /^ :i [o|ou|out] '=' (\S+) / {
            $out = ~$0;
            # ok to overwrite an existing one
        }
        when /^ :i d / {
            ++$debug;
        }
        default {
            say "FATAL: Unrecognized arg '$_'";
            exit;
        }
    }
    if @errs {
        my $s = @errs.elems > 1 ?? "s" !! "";
        say "FATAL: Input error$s:";
        say "  $_" for @errs;
        exit;
    }
}
