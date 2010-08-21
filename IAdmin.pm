package IAdmin;
BEGIN
{
    use Exporter();
    @ISA = qw(Exporter);
    @EXPORT = qw(&passgen);
}

sub passgen($){
    my $len = shift;
    my $res;
    open (RND,"</dev/urandom");
    my $i = 0;
    getc RND;
    while ( $i < $len ){
        my $char = getc RND;
        if ($char =~ /[a-zA-Z0-9_]/) {
            $res="$res$char";
            $i++;
        }
    }
    close RND;
    return $res;
}
return 1;
END { }		
								    