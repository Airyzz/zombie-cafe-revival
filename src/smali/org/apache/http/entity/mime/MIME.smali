.class public final Lorg/apache/http/entity/mime/MIME;
.super Ljava/lang/Object;


# static fields
.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final CONTENT_TRANSFER_ENC:Ljava/lang/String; = "Content-Transfer-Encoding"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field public static final ENC_8BIT:Ljava/lang/String; = "8bit"

.field public static final ENC_BINARY:Ljava/lang/String; = "binary"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
