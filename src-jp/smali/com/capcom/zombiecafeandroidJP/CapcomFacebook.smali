.class public Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;
.super Ljava/lang/Object;


# static fields
.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field private i:Lcom/capcom/a/f;

.field private j:Ljava/lang/String;

.field private k:Lcom/capcom/a/a;

.field private l:Landroid/app/Activity;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "publish_stream"

    aput-object v1, v0, v2

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->g:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/capcom/a/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->w:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->l:Landroid/app/Activity;

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    new-instance v0, Lcom/capcom/a/a;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    invoke-direct {v0, v1}, Lcom/capcom/a/a;-><init>(Lcom/capcom/a/f;)V

    iput-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->k:Lcom/capcom/a/a;

    return-void
.end method

.method static synthetic a(Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;)Lcom/capcom/a/f;
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    return-object v0
.end method

.method static synthetic a(Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;I)V
    .locals 0

    iput p1, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->o:I

    return-void
.end method

.method static synthetic b(Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;)I
    .locals 1

    iget v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->m:I

    return v0
.end method

.method static synthetic c(Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static native onFacebook(Z)V
.end method

.method public static native sendFriendInfo(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setFBInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "Clear Credentials"

    const-string v1, "token=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->k:Lcom/capcom/a/a;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/capcom/zombiecafeandroidJP/i;

    invoke-direct {v2, p0}, Lcom/capcom/zombiecafeandroidJP/i;-><init>(Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;)V

    invoke-virtual {v0, v1, v2}, Lcom/capcom/a/a;->a(Landroid/content/Context;Lcom/capcom/a/d;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/capcom/a/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/capcom/a/f;->a(J)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->a(Lcom/capcom/a/f;)Z

    sput-boolean v4, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->af:Z

    invoke-static {v4}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->onFacebook(Z)V

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "Execute Facebook"

    const-string v1, "Inside CapcomFaceBook"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->m:I

    iget v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->m:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "CapcomFaceBook"

    const-string v1, "Gonna Post On Wall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "facebookMessage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_1
    iput-object p2, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    invoke-virtual {v0}, Lcom/capcom/a/f;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->b(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "CapcomFaceBook"

    const-string v1, "Gonna Upload a Picture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "facebookMessage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    :goto_2
    iput-object p2, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    invoke-virtual {v0}, Lcom/capcom/a/f;->a()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "CapcomFaceBook"

    const-string v1, "log in if session is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->b()V

    goto :goto_0

    :pswitch_3
    const-string v0, "CapcomFaceBook"

    const-string v1, "Getting List of Friends?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    invoke-virtual {v0}, Lcom/capcom/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "CapcomFaceBook - Logged On"

    const-string v1, "Get Zombie Friends()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->c()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->b()V

    goto :goto_0

    :pswitch_4
    iput-object p2, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->f:Ljava/lang/String;

    const-string v0, "CapcomFaceBook, post story"

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    invoke-virtual {v0}, Lcom/capcom/a/f;->a()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->b()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->d()V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "CapcomFaceBook"

    const-string v1, "Get Name, Id of User"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    invoke-virtual {v0}, Lcom/capcom/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->e()V

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "CapcomFaceBook change account"

    const-string v1, "log out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->a()V

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "CapcomFaceBook isLoggedin"

    const-string v1, "return isSessionValid()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    invoke-virtual {v0}, Lcom/capcom/a/f;->a()Z

    move-result v0

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->af:Z

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "INIT FACEBOOK USER DATA"

    const-string v1, "IF INVALID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->b(Lcom/capcom/a/f;)Z

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    invoke-virtual {v0}, Lcom/capcom/a/f;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->k:Lcom/capcom/a/a;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->l:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/capcom/a/a;->a(Landroid/content/Context;Lcom/capcom/a/d;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    invoke-virtual {v0, v2}, Lcom/capcom/a/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/capcom/a/f;->a(J)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->a(Lcom/capcom/a/f;)Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->af:Z

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->a(Lcom/capcom/a/f;)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->af:Z

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->e()V

    goto/16 :goto_0

    :cond_6
    move-object p2, v0

    goto/16 :goto_2

    :cond_7
    move-object p2, v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const-string v0, "UPLOAD PICTURE"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "method"

    const-string v3, "photos.upload"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UploadPicture="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "method"

    const-string v4, "photos.upload"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {v3, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v3, "picture"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "caption"

    const-string v3, "\u3053\u308c\u304c\u79c1\u306e\u30be\u30f3\u30d3\u30ab\u30d5\u30a7\u3060\uff01"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/capcom/a/a;

    iget-object v3, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    invoke-direct {v0, v3}, Lcom/capcom/a/a;-><init>(Lcom/capcom/a/f;)V

    const-string v3, "POST"

    new-instance v4, Lcom/capcom/zombiecafeandroidJP/j;

    invoke-direct {v4, p0}, Lcom/capcom/zombiecafeandroidJP/j;-><init>(Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;)V

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/capcom/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/capcom/a/d;Ljava/lang/Object;)V

    const-string v0, "FACEBOOK UPLOAD"

    const-string v1, "SEND THE PICTURE!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "bitmap decoder ERROR,could not find file?"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Lcom/capcom/a/f;)Z
    .locals 4

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ac:Lcom/capcom/zombiecafeandroidJP/CC_Android;

    const-string v0, "access_token"

    invoke-virtual {p1}, Lcom/capcom/a/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_CCOptionsSetString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FACEBOOK EXPIRES"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/capcom/a/f;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ac:Lcom/capcom/zombiecafeandroidJP/CC_Android;

    const-string v0, "expires_in"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_CCOptionsSetUInt(Ljava/lang/String;J)V

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 5

    const-string v0, "Capcom Login"

    const-string v1, "facebook.authorize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->l:Landroid/app/Activity;

    sget-object v2, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->g:[Ljava/lang/String;

    const/4 v3, -0x1

    new-instance v4, Lcom/capcom/zombiecafeandroidJP/h;

    invoke-direct {v4, p0}, Lcom/capcom/zombiecafeandroidJP/h;-><init>(Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/capcom/a/f;->a(Landroid/app/Activity;[Ljava/lang/String;ILcom/capcom/a/h;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->l:Landroid/app/Activity;

    const-string v3, "stream.publish"

    new-instance v4, Lcom/capcom/zombiecafeandroidJP/k;

    invoke-direct {v4, p0}, Lcom/capcom/zombiecafeandroidJP/k;-><init>(Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/capcom/a/f;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/capcom/a/h;)V

    return-void
.end method

.method public b(Lcom/capcom/a/f;)Z
    .locals 4

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ac:Lcom/capcom/zombiecafeandroidJP/CC_Android;

    const-string v0, "access_token"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_CCOptionsGetStringJava(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/capcom/a/f;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ac:Lcom/capcom/zombiecafeandroidJP/CC_Android;

    const-string v0, "expires_in"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_CCOptionsGetUInt(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/capcom/a/f;->a(J)V

    invoke-virtual {p1}, Lcom/capcom/a/f;->a()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "method"

    const-string v3, "fql.query"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SELECT uid, name, pic_square, first_name, last_name FROM user WHERE uid IN (SELECT uid2 FROM friend WHERE uid1=me())"

    const-string v3, "query"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/capcom/a/a;

    iget-object v3, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    invoke-direct {v0, v3}, Lcom/capcom/a/a;-><init>(Lcom/capcom/a/f;)V

    const-string v3, "POST"

    new-instance v4, Lcom/capcom/zombiecafeandroidJP/f;

    invoke-direct {v4, p0}, Lcom/capcom/zombiecafeandroidJP/f;-><init>(Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;)V

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/capcom/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/capcom/a/d;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->o:I

    return-void
.end method

.method public d()V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Post Story"

    const-string v2, "On Facebook Wall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GETTING mStory"

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GETTING mIconPath"

    const-string v2, "Use Hard Coded Path"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "picture"

    const-string v2, "http://zombiecafe.capcomcanada.com/zca/FBIcon.png"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "link"

    const-string v2, "https://market.android.com/details?id=com.capcom.zombiecafeandroidJP"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "caption"

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->i:Lcom/capcom/a/f;

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->l:Landroid/app/Activity;

    const-string v3, "feed"

    new-instance v4, Lcom/capcom/zombiecafeandroidJP/k;

    invoke-direct {v4, p0}, Lcom/capcom/zombiecafeandroidJP/k;-><init>(Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/capcom/a/f;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/capcom/a/h;)V

    return-void
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;->k:Lcom/capcom/a/a;

    const-string v1, "me"

    new-instance v2, Lcom/capcom/zombiecafeandroidJP/g;

    invoke-direct {v2, p0}, Lcom/capcom/zombiecafeandroidJP/g;-><init>(Lcom/capcom/zombiecafeandroidJP/CapcomFacebook;)V

    invoke-virtual {v0, v1, v2}, Lcom/capcom/a/a;->a(Ljava/lang/String;Lcom/capcom/a/d;)V

    return-void
.end method
