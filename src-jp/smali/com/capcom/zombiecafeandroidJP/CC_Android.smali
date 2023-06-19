.class public Lcom/capcom/zombiecafeandroidJP/CC_Android;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field public static a:Z

.field public static b:Z

.field public static c:Landroid/media/MediaPlayer;

.field public static d:[Landroid/media/MediaPlayer;

.field public static e:I

.field public static f:I

.field public static g:[Ljava/lang/String;

.field public static h:[Ljava/lang/String;

.field public static i:Ljavax/microedition/khronos/opengles/GL10;

.field public static j:[Ljava/lang/String;

.field public static k:[Ljava/lang/String;

.field static l:Z

.field private static m:I

.field private static n:F

.field private static o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x14

    const/4 v2, 0x2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->a:Z

    sput-boolean v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->b:Z

    const/4 v0, -0x1

    sput v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->m:I

    new-array v0, v2, [Landroid/media/MediaPlayer;

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->n:F

    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->g:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->h:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->j:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->k:[Ljava/lang/String;

    sput-boolean v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->l:Z

    return-void
.end method

.method public constructor <init>(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getGlObj()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->i:Ljavax/microedition/khronos/opengles/GL10;

    const-string v0, "CC_Android"

    const-string v1, "Created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static CCNextPO2(I)I
    .locals 2

    add-int/lit8 v0, p0, -0x1

    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static OpenHttpConnection(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    instance-of v2, v0, Ljava/net/HttpURLConnection;

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not an HTTP connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, "Return OpenConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error connecting"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static fromNative_Accelerometer(Z)V
    .locals 0

    invoke-static {p0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ToggleAccelerometer(Z)V

    return-void
.end method

.method public static fromNative_AsyncConsume()V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x33f6

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_AsyncQueryInventory()V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x33f4

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_BuyStuff(I)V
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0, p0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->BuyToxin(I)V

    return-void
.end method

.method public static fromNative_CCOptionsGetBool(Ljava/lang/String;Z)Z
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ad:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static fromNative_CCOptionsGetFloat(Ljava/lang/String;F)F
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ad:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static fromNative_CCOptionsGetInt(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ad:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static fromNative_CCOptionsGetString(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ad:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static fromNative_CCOptionsGetStringJava(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ad:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromNative_CCOptionsGetUInt(Ljava/lang/String;J)J
    .locals 5

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ad:Landroid/content/SharedPreferences;

    long-to-int v1, p1

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CCOptionsGetUInt="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Data="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public static fromNative_CCOptionsGetUInt64(Ljava/lang/String;D)D
    .locals 5

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ad:Landroid/content/SharedPreferences;

    double-to-long v2, p1

    invoke-interface {v0, p0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CCOptionsGetInt64="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Data="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-double v0, v0

    return-wide v0
.end method

.method public static fromNative_CCOptionsInit(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CCOptionsInit"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "File="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fromNative_CCOptionsSetBool(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ad:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static fromNative_CCOptionsSetFloat(Ljava/lang/String;F)V
    .locals 0

    return-void
.end method

.method public static fromNative_CCOptionsSetInt(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ad:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static fromNative_CCOptionsSetString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x303f

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_CCOptionsSetUInt(Ljava/lang/String;J)V
    .locals 3

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ad:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    long-to-int v1, p1

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static fromNative_CCOptionsSetUInt64(Ljava/lang/String;D)V
    .locals 5

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ad:Landroid/content/SharedPreferences;

    double-to-long v2, p1

    invoke-interface {v0, p0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CCOptionsSetUInt64="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Data="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ad:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    double-to-long v2, p1

    invoke-interface {v0, p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static fromNative_CCSecondsSince1970()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static fromNative_CRAMAction(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromNative_CanOpenHero()Z
    .locals 2

    const-string v0, "CC_Android fromNative_CanOpenHero"

    const-string v1, "/========== START ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CC_Android fromNative_CanOpenHero"

    const-string v1, "/==========  END  ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->nativeCanOpenHero()Z

    move-result v0

    return v0
.end method

.method public static fromNative_CanOpenNinja()Z
    .locals 2

    const-string v0, "CC_Android fromNative_CanOpenNinja"

    const-string v1, "/========== START ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CC_Android fromNative_CanOpenNinja"

    const-string v1, "/==========  END  ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->nativeCanOpenNinja()Z

    move-result v0

    return v0
.end method

.method public static fromNative_CanOpenSnoopyPuzzle()Z
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->nativeCanOpenSnoopyPuzzle()Z

    move-result v0

    return v0
.end method

.method public static fromNative_Connected()Z
    .locals 1

    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->b:Z

    return v0
.end method

.method public static fromNative_DeleteNotification()V
    .locals 0

    return-void
.end method

.method public static fromNative_ER3Parse(Ljava/lang/String;)V
    .locals 10

    const/4 v6, 0x0

    const-string v0, "CC_Android fromNative_ER3Parse"

    const-string v1, "/========== START ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "eventid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "point"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pos"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "starttime"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "endtime"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-eqz v2, :cond_2

    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :goto_1
    if-eqz v3, :cond_3

    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    :goto_2
    if-eqz v4, :cond_4

    :try_start_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    :goto_3
    if-eqz v5, :cond_5

    :try_start_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v5

    :goto_4
    if-eqz v7, :cond_6

    :try_start_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move v9, v0

    move v0, v7

    move v7, v9

    :goto_5
    if-nez v7, :cond_7

    move v5, v6

    move v4, v6

    move v3, v6

    move v2, v6

    move v1, v6

    :goto_6
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual/range {v0 .. v6}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->nativeER3Parse(IIIIII)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_0
    :goto_7
    const-string v0, "CC_Android fromNative_ER3Parse"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "eventid = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CC_Android fromNative_ER3Parse"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "status = "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CC_Android fromNative_ER3Parse"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "point = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CC_Android fromNative_ER3Parse"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pos = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CC_Android fromNative_ER3Parse"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "starttime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CC_Android fromNative_ER3Parse"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endtime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CC_Android fromNative_ER3Parse"

    const-string v1, "/==========  END  ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move v0, v6

    move v1, v6

    goto/16 :goto_0

    :cond_2
    move v0, v6

    move v2, v6

    goto/16 :goto_1

    :cond_3
    move v0, v6

    move v3, v6

    goto/16 :goto_2

    :cond_4
    move v0, v6

    move v4, v6

    goto/16 :goto_3

    :cond_5
    move v0, v6

    move v5, v6

    goto/16 :goto_4

    :cond_6
    move v7, v6

    move v0, v6

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move v5, v6

    move v4, v6

    move v3, v6

    move v2, v6

    move v1, v6

    :goto_8
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move v5, v6

    move v4, v6

    move v3, v6

    move v2, v6

    goto :goto_8

    :catch_2
    move-exception v0

    move v5, v6

    move v4, v6

    move v3, v6

    goto :goto_8

    :catch_3
    move-exception v0

    move v5, v6

    move v4, v6

    goto :goto_8

    :catch_4
    move-exception v0

    move v5, v6

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_8

    :cond_7
    move v6, v0

    goto/16 :goto_6
.end method

.method public static fromNative_EnableRemoteNotification(Z)V
    .locals 2

    const-string v0, "ZombieCafeAndroid-GCM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/capcom/gcm/e;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static fromNative_EncodeURL(Ljava/lang/String;)[B
    .locals 2

    const-string v0, ""

    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, "Input URL"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Encoded Out"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromNative_EndLoading()V
    .locals 2

    const-string v0, "CC_Android"

    const-string v1, "fromNative_EndLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->g:Z

    return-void
.end method

.method public static fromNative_EventGetGiftParse(Ljava/lang/String;)V
    .locals 23

    const-string v1, "CC_Android fromNative_EventGetGiftParse"

    const-string v2, "/========== START ==========/"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    const/16 v1, 0xa

    new-array v3, v1, [I

    const/16 v1, 0xa

    new-array v10, v1, [Ljava/lang/String;

    const/16 v1, 0xa

    new-array v4, v1, [I

    const/16 v1, 0xa

    new-array v11, v1, [I

    const/16 v1, 0xa

    new-array v5, v1, [I

    const/16 v1, 0xa

    new-array v6, v1, [I

    const/16 v1, 0xa

    new-array v7, v1, [I

    const/4 v8, 0x0

    :try_start_0
    new-instance v12, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-lt v9, v13, :cond_1

    :cond_0
    :goto_1
    const-string v1, "CC_Android fromNative_EventGetGiftParse"

    const-string v2, "/==========  END  ==========/"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_c

    const-string v14, "id"

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "fromuuid"

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "fromuname"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "kind"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "itemkind"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "itemid"

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "quantity"

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "getcount"

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/4 v1, 0x1

    if-eqz v14, :cond_3

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, ":"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    if-eqz v15, :cond_4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v3, v8

    :goto_3
    if-eqz v16, :cond_5

    aput-object v16, v10, v8

    :goto_4
    if-eqz v17, :cond_6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v4, v8

    :goto_5
    if-eqz v18, :cond_7

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v11, v8

    :goto_6
    if-eqz v19, :cond_8

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v5, v8

    :goto_7
    if-eqz v20, :cond_9

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v6, v8

    :goto_8
    if-eqz v21, :cond_a

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v7, v8

    :goto_9
    if-nez v1, :cond_b

    const/4 v1, 0x0

    aput v1, v3, v8

    const/4 v1, 0x0

    aput v1, v5, v8

    const/4 v1, 0x0

    aput v1, v6, v8

    const/4 v1, 0x0

    aput v1, v7, v8

    :goto_a
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual/range {v1 .. v8}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->nativeEventGetGiftParse(Ljava/lang/String;[I[I[I[I[II)V

    :cond_2
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_4
    const/4 v1, 0x0

    aput v1, v3, v8

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    const-string v1, "error"

    aput-object v1, v10, v8

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    aput v1, v4, v8

    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    aput v1, v11, v8

    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    aput v1, v5, v8

    const/4 v1, 0x0

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    aput v1, v6, v8

    const/4 v1, 0x0

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    aput v1, v7, v8

    const/4 v1, 0x0

    goto :goto_9

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_c
    const/4 v1, 0x0

    :goto_b
    const/16 v14, 0xa

    if-ge v1, v14, :cond_2

    const/4 v14, 0x0

    aput v14, v3, v1

    const/4 v14, 0x0

    aput v14, v5, v1

    const/4 v14, 0x0

    aput v14, v6, v1

    const/4 v14, 0x0

    aput v14, v7, v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public static fromNative_Facebook2(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "fromNative_Facebook"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "option"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3049

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_GetAndroidDevice()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static fromNative_GetAndroidID()[B
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static fromNative_GetCountryCode()[B
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static fromNative_GetDate(I)I
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v0, 0x63

    packed-switch p0, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static fromNative_GetDateString(I)[B
    .locals 2

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0, p0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getDate(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fromnative_GetDateString"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static fromNative_GetDeviceID()[B
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static fromNative_GetDeviceInfoForURL()[B
    .locals 2

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&brand="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/l;->a()Lcom/capcom/zombiecafeandroidJP/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&mani="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/l;->a()Lcom/capcom/zombiecafeandroidJP/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&dev="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/l;->a()Lcom/capcom/zombiecafeandroidJP/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&model="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/l;->a()Lcom/capcom/zombiecafeandroidJP/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/l;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&prod="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/l;->a()Lcom/capcom/zombiecafeandroidJP/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&ASDK="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/l;->a()Lcom/capcom/zombiecafeandroidJP/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/l;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&SDK="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/l;->a()Lcom/capcom/zombiecafeandroidJP/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/l;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static fromNative_GetEntryParse(Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    const-string v1, "CC_Android fromNative_GetEntryParse"

    const-string v2, "/========== START ==========/"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HIGUCHI getEntryString = "

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    const-string v1, ""

    const-string v4, ""

    const-string v2, ""

    const-string v1, ""

    const-string v3, ""

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_2

    const-string v6, "entry"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_7

    const-string v3, "rwd_adways"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "news_idx"

    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    move-object v3, v4

    :goto_0
    const-string v4, "vip"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_6

    const-string v1, "flg"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "rk"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move-object v5, v2

    :goto_1
    if-eqz v3, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v3, v1

    :goto_2
    if-eqz v6, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v2, v1

    :goto_3
    if-eqz v5, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_4
    if-eqz v4, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    sget-object v4, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v4, v3, v1, v0, v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->nativeGetEntryParse(IIII)V

    :cond_1
    const-string v0, "HIGUCHI"

    const-string v1, "Yes JSON Objects."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_5
    const-string v0, "CC_Android fromNative_GetEntryParse"

    const-string v1, "/==========  END  ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/16 v1, 0x270f

    move v3, v1

    goto :goto_2

    :cond_4
    move v2, v0

    goto :goto_3

    :cond_5
    move v1, v0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    :cond_6
    move-object v4, v1

    move-object v5, v2

    goto :goto_1

    :cond_7
    move-object v6, v3

    move-object v3, v4

    goto :goto_0
.end method

.method public static fromNative_GetEventValueParse(Ljava/lang/String;)V
    .locals 17

    const-string v1, "CC_Android fromNative_GetEventValueParse"

    const-string v2, "/========== START ==========/"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa

    new-array v2, v1, [I

    const/16 v1, 0xa

    new-array v3, v1, [I

    const/16 v1, 0xa

    new-array v4, v1, [I

    const/16 v1, 0xa

    new-array v5, v1, [Ljava/lang/String;

    const/16 v1, 0xa

    new-array v6, v1, [I

    const/16 v1, 0xa

    new-array v7, v1, [Ljava/lang/String;

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    const/16 v11, 0xa

    if-gt v1, v11, :cond_1

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_1
    const-string v1, "CC_Android fromNative_GetEventValueParse"

    const-string v2, "/==========  END  ==========/"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v11, "supportid"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "category"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "item_id"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "place"

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "quantity"

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "message"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/4 v1, 0x1

    if-eqz v11, :cond_3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v2, v8

    :goto_2
    if-eqz v12, :cond_4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v3, v8

    :goto_3
    if-eqz v13, :cond_5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v4, v8

    :goto_4
    if-eqz v14, :cond_6

    aput-object v14, v5, v8

    :goto_5
    if-eqz v15, :cond_7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v6, v8

    :goto_6
    if-eqz v16, :cond_8

    aput-object v16, v7, v8

    :goto_7
    if-nez v1, :cond_9

    const/4 v1, 0x0

    aput v1, v2, v8

    const/4 v1, 0x0

    aput v1, v3, v8

    const/4 v1, 0x0

    aput v1, v4, v8

    const-string v1, ""

    aput-object v1, v5, v8

    const/4 v1, 0x0

    aput v1, v6, v8

    const-string v1, ""

    aput-object v1, v7, v8

    :goto_8
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual/range {v1 .. v8}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->nativeGetEventValueParse([I[I[I[Ljava/lang/String;[I[Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    :cond_3
    const/4 v1, 0x0

    :try_start_2
    aput v1, v2, v8

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    aput v1, v3, v8

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    aput v1, v4, v8

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    const-string v1, "error"

    aput-object v1, v5, v8

    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    aput v1, v6, v8

    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    const-string v1, "error"

    aput-object v1, v7, v8

    const/4 v1, 0x0

    goto :goto_7

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    :goto_9
    const/16 v11, 0xa

    if-ge v1, v11, :cond_0

    const/4 v11, 0x0

    aput v11, v2, v1

    const/4 v11, 0x0

    aput v11, v3, v1

    const/4 v11, 0x0

    aput v11, v4, v1

    const-string v11, ""

    aput-object v11, v5, v1

    const/4 v11, 0x0

    aput v11, v6, v1

    const-string v11, ""

    aput-object v11, v7, v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method public static fromNative_GetGameInfoParse(Ljava/lang/String;)V
    .locals 12

    const-string v0, ""

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v1, "hco"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v10, :cond_1

    const-string v0, "tiertype"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "saleid"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "starttime"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "endtime"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v0, "time"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v0, "mc"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "items"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v10

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual/range {v0 .. v10}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->nativeGetGameInfoHCOSettingParse(IIJIJJI)V

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-lt v6, v10, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "level"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "zombility"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "ampoule"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual/range {v0 .. v6}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->nativeGetGameInfoHCOItemParse(IIIIII)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "getGameInfoString"

    const-string v2, "rootObject exeption"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static fromNative_GetGraphicSet()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static fromNative_GetIMEI()[B
    .locals 3

    const-string v0, "CC_Android fromNative_GetIMEI "

    const-string v1, "/========== START ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v1, "CC_Android fromNative_GetIMEI "

    const-string v2, "/==========  END  ==========/"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static fromNative_GetProductID()[B
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static fromNative_GetTrueTypeFont(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 4

    const-string v0, "CapcomTrueTypeFont"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetTrueTypeFont 1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;->getInstance(Landroid/content/res/AssetManager;Ljava/lang/String;I)Lcom/capcom/zombiecafeandroidJP/TrueTypeFont;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string v1, "CapcomTrueTypeFont"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GetTrueTypeFont 2: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception v1

    const-string v1, "CapcomTrueTypeFont"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown resource from: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static fromNative_HideFixWebView(IIZ)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "x"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "y"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "force"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3337

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_HideInfobar(IIZ)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "x"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "y"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "force"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x32fc

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_HideWebView()V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x3042

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_HideWebViewInfobar(IIZ)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "x"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "y"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "force"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x332d

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_HideWebViewNickName()V
    .locals 2

    const-string v0, "CC_Android fromNative_HideWebViewNickName "

    const-string v1, "/========== START ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x32cd

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    const-string v0, "CC_Android fromNative_HideWebViewNickName "

    const-string v1, "/==========  END  ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fromNative_HideWebViewRanking(IIZ)V
    .locals 3

    const-string v0, "CC_Android fromNative_HideWebViewRanking"

    const-string v1, "/========== START ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CC_Android fromNative_HideWebViewRanking"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "x = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "x"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "y"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "force"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3337

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    const-string v0, "CC_Android fromNative_HideWebViewRanking"

    const-string v1, "/========== END ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fromNative_IsConnected()Z
    .locals 2

    const-string v0, "fromNative"

    const-string v1, "Is Connected?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->isConnected()Z

    move-result v0

    return v0
.end method

.method public static fromNative_IsOpenFixWebView()Z
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->E:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromNative_JSONTakeOverDataParse(Ljava/lang/String;)V
    .locals 7

    const-string v0, "CC_Android fromNative_JSONTakeOverDataParse"

    const-string v1, "/========== START ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " fromNative_JSONTakeOverDataParse = "

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    const/16 v6, 0xc8

    if-ge v1, v6, :cond_0

    const-string v4, "pwd"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "limittime"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual/range {v0 .. v5}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->nativeJSONTakeOverDataParse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const-string v0, "CC_Android fromNative_JSONTakeOverDataParse"

    const-string v1, "/========== END ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static fromNative_JSONTakeOverDataParse2(Ljava/lang/String;)V
    .locals 6

    const-string v0, "CC_Android fromNative_JSONTakeOverDataParse2"

    const-string v1, "/========== START ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " fromNative_JSONTakeOverDataParse2 = "

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "title"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "msg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, ""

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    const/16 v5, 0xc8

    if-ge v1, v5, :cond_0

    const-string v0, "transferid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-object v2, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->nativeJSONTakeOverDataParse2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const-string v0, "CC_Android fromNative_JSONTakeOverDataParse2"

    const-string v1, "/========== END ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static fromNative_LaunchCameraManager(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0, p0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->LaunchCameraManager(Ljava/lang/String;)V

    return-void
.end method

.method public static fromNative_LaunchURL(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3043

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_LaunchURL2(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3044

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_LoadFBIconFromURL(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "fromNative"

    const-string v1, "LoadFBIconFromURL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "filename"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "friendindex"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x32ca

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_LoadFromURL(Ljava/lang/String;[B)V
    .locals 3

    const-string v0, "fromNative"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LoadFromURL->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "fromNative"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LoadToLoc  ->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method public static fromNative_LoadImageFromURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const-string v0, "fromNative"

    const-string v1, "LoadImageFromURL - but really just a webpage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "filename"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/capcom/zombiecafeandroidJP/r;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "filename"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "callback"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/capcom/zombiecafeandroidJP/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v1, :cond_0

    const-string v0, "LoadImageFromURL"

    const-string v2, "About To Execute"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroidJP/r;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    const-string v0, "LoadImageFromURL"

    const-string v1, "Failed!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static fromNative_LoggedIn()Z
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->IsLoggedIn()Z

    move-result v0

    return v0
.end method

.method public static fromNative_MD5Data([BI)[B
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0, p0, p1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->md5Data([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static fromNative_MD5String(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0, p0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->md5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static fromNative_NewRequest(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "fromNative_NewRequest"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/capcom/zombiecafeandroidJP/r;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "callback"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/capcom/zombiecafeandroidJP/r;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v1, :cond_0

    const-string v0, "NewRequest"

    const-string v2, "About To Execute"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroidJP/r;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    const-string v0, "NewRequest"

    const-string v1, "Failed!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static fromNative_NickNameError()V
    .locals 2

    const-string v0, "CC_Android fromNative_NickNameError "

    const-string v1, "/========== START ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x32cf

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    const-string v0, "CC_Android fromNative_NickNameError "

    const-string v1, "/==========  END  ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fromNative_NickNameFaild()V
    .locals 2

    const-string v0, "CC_Android fromNative_NickNameFaild "

    const-string v1, "/========== START ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x32ce

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    const-string v0, "CC_Android fromNative_NickNameFaild "

    const-string v1, "/==========  END  ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fromNative_NickNameUpdatePage()V
    .locals 2

    const-string v0, "CC_Android fromNative_NickNameUpdatePage"

    const-string v1, "/========== START ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->openNickNameEditPage()V

    const-string v0, "CC_Android fromNative_NickNameUpdatePage"

    const-string v1, "/==========  END  ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fromNative_OpenGooglePlay()V
    .locals 2

    const-string v0, "YASUMURA"

    const-string v1, "JAVA side Open Google Play"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->openGooglePlay()V

    return-void
.end method

.method public static fromNative_OpenSupportPage()V
    .locals 2

    const-string v0, "YASUMURA"

    const-string v1, "JAVA side Open Support Page"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->openSupportPage()V

    return-void
.end method

.method public static fromNative_PaypalButton(Z)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3051

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_ProgressBar(I)V
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ListFiles()V

    return-void
.end method

.method public static fromNative_RankingGetGiftParse(Ljava/lang/String;)V
    .locals 18

    const-string v1, "CC_Android fromNative_RankingGetGiftParse"

    const-string v2, "/========== START ==========/"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xe

    new-array v2, v1, [Ljava/lang/String;

    const/16 v1, 0xe

    new-array v3, v1, [I

    const/16 v1, 0xe

    new-array v4, v1, [I

    const/16 v1, 0xe

    new-array v5, v1, [I

    const/16 v1, 0xe

    new-array v6, v1, [I

    const/16 v1, 0xe

    new-array v7, v1, [Ljava/lang/String;

    const/4 v8, 0x0

    :try_start_0
    new-instance v10, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-eqz v10, :cond_0

    if-eqz v11, :cond_0

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-lt v9, v11, :cond_1

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual/range {v1 .. v8}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->nativeRankingGetGiftParse([Ljava/lang/String;[I[I[I[I[Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const-string v1, "CC_Android fromNative_EventGetGiftParse"

    const-string v2, "/==========  END  ==========/"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v10, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v12, "id"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "category"

    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "itemcategory"

    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "itemid"

    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "quantity"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "message"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/4 v1, 0x1

    if-eqz v12, :cond_3

    aput-object v12, v2, v8

    :goto_2
    if-eqz v13, :cond_4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v3, v8

    :goto_3
    if-eqz v14, :cond_5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v4, v8

    :goto_4
    if-eqz v15, :cond_6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v5, v8

    :goto_5
    if-eqz v16, :cond_7

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v6, v8

    :goto_6
    if-eqz v17, :cond_8

    aput-object v17, v7, v8

    :goto_7
    if-nez v1, :cond_9

    const-string v1, "error"

    aput-object v1, v2, v8

    const/4 v1, 0x0

    aput v1, v3, v8

    const/4 v1, 0x0

    aput v1, v4, v8

    const/4 v1, 0x0

    aput v1, v5, v8

    const/4 v1, 0x0

    aput v1, v6, v8

    const-string v1, "error"

    aput-object v1, v7, v8

    :cond_2
    :goto_8
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_0

    :cond_3
    const-string v1, "error"

    aput-object v1, v2, v8

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    aput v1, v3, v8

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    aput v1, v4, v8

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    aput v1, v5, v8

    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    aput v1, v6, v8

    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    const-string v1, "error"

    aput-object v1, v7, v8
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    goto :goto_7

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public static fromNative_ReloadFixWebView(IIZ)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "x"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "y"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "force"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3338

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_SaveCRAMImage([BI)V
    .locals 0

    return-void
.end method

.method public static fromNative_SaveCRAMInfo(ILjava/lang/String;)V
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static fromNative_Screenshot(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0, p0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->TakeScreenshot(Ljava/lang/String;)V

    return-void
.end method

.method public static fromNative_SendAppDriver(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CC_Android fromNative_sendAppDriver"

    const-string v1, "/========== START ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0, p0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->sendAppDriver(Ljava/lang/String;)V

    const-string v0, "CC_Android fromNative_sendAppDriver"

    const-string v1, "/==========  END  ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fromNative_SendEmail()V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x3053

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_SendNotification(ILjava/lang/String;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->sendNotification(ILjava/lang/String;II)V

    return-void
.end method

.method public static fromNative_SetPCostArr(ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->k:[Ljava/lang/String;

    aput-object p1, v0, p0

    return-void
.end method

.method public static fromNative_SetPNameArr(ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->j:[Ljava/lang/String;

    aput-object p1, v0, p0

    return-void
.end method

.method public static fromNative_ShowFixWebView(IIIILjava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_ShowFixWebView(IIIILjava/lang/String;ZZ)V

    return-void
.end method

.method public static fromNative_ShowFixWebView(IIIILjava/lang/String;ZZ)V
    .locals 3

    const-string v0, "YASUMURA WV "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JAVA fromNative_ShowFixWebView x = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "x"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "y"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "w"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "h"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "displayHomeButton"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "afterOpenInfobar"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3336

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_ShowToast(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Show Toast Message"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "text"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x303a

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_ShowWebView()V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x3041

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_ShowWebViewInfobar(IIIILjava/lang/String;)V
    .locals 3

    const-string v0, "YASUMURA WV "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JAVA fromNative_ShowWebViewInfobar x = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "x"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "y"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "w"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "h"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x332c

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_ShowWebViewNickName()V
    .locals 2

    const-string v0, "CC_Android fromNative_ShowWebViewNickName "

    const-string v1, "/========== START ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x32cb

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    const-string v0, "CC_Android fromNative_ShowWebViewNickName "

    const-string v1, "/==========  END  ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fromNative_ShowWebViewRanking(IIIILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "CC_Android fromNative_ShowWebViewRanking"

    const-string v1, "/========== START ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CC_Android fromNative_ShowWebViewRanking"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "x = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "x"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "y"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "w"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "h"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "displayHomeButton"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "afterOpenInfobar"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3336

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    const-string v0, "CC_Android fromNative_ShowWebViewRanking"

    const-string v1, "/========== END ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fromNative_SoundsLoaded()Z
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ag:Lcom/capcom/zombiecafeandroidJP/SoundManager;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ah:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromNative_StartInfobar(Ljava/lang/String;)V
    .locals 3

    const-string v0, "YASUMURA WV "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JAVA fromNative_StartInfobar url = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x32fa

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_StartInfobarOpen(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x32fd

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_SurvivalCheckGiftParse(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "CC_Android fromNative_SurvivalCheckGiftParse"

    const-string v2, "/========== START ==========/"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "kind"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "quantity"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    sget-object v2, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v2, v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->nativeSurvivalCheckGiftParse(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const-string v0, "CC_Android fromNative_SurvivalCheckGiftParse"

    const-string v1, "/==========  END  ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static fromNative_SurvivalGetGiftParse(Ljava/lang/String;)V
    .locals 13

    const/4 v11, 0x0

    const-string v0, "CC_Android fromNative_SurvivalGetGiftParse"

    const-string v1, "/========== START ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hiveid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "appcode"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "eventid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fPosition"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "span"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "kind"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "item_id"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "zombielvl"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "zombility"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v12, "quantity"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    if-eqz v3, :cond_4

    :goto_2
    if-eqz v4, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_3
    if-eqz v5, :cond_6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_4
    if-eqz v6, :cond_7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_5
    if-eqz v7, :cond_8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_6
    if-eqz v8, :cond_9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_7
    if-eqz v9, :cond_a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_8
    if-eqz v10, :cond_b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_9
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :cond_0
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual/range {v0 .. v11}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->nativeSurvivalGetGiftParse(IILjava/lang/String;IIIIIIII)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_a
    const-string v0, "CC_Android fromNative_SurvivalGetGiftParse"

    const-string v1, "/==========  END  ==========/"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move v1, v11

    goto :goto_0

    :cond_3
    move v2, v11

    goto :goto_1

    :cond_4
    :try_start_1
    const-string v3, "error"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_5
    move v4, v11

    goto :goto_3

    :cond_6
    move v5, v11

    goto :goto_4

    :cond_7
    move v6, v11

    goto :goto_5

    :cond_8
    move v7, v11

    goto :goto_6

    :cond_9
    move v8, v11

    goto :goto_7

    :cond_a
    move v9, v11

    goto :goto_8

    :cond_b
    move v10, v11

    goto :goto_9

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a
.end method

.method public static fromNative_SurvivalParse(Ljava/lang/String;)V
    .locals 22

    const-string v1, "CC_Android fromNative_SurvivalParse"

    const-string v2, "/========== START ==========/"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/16 v2, 0xa

    new-array v2, v2, [I

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v3, ""

    const-string v3, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [I

    const/4 v4, 0x0

    new-array v4, v4, [I

    const/4 v5, 0x0

    new-array v5, v5, [I

    const/4 v6, 0x0

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v18, 0x0

    aput v9, v2, v18

    const/4 v9, 0x1

    aput v8, v2, v9

    const/4 v9, 0x2

    aput v10, v2, v9

    const/4 v9, 0x3

    aput v11, v2, v9

    const/4 v9, 0x4

    aput v12, v2, v9

    const/4 v9, 0x5

    aput v13, v2, v9

    const/4 v9, 0x6

    aput v14, v2, v9

    const/4 v9, 0x7

    aput v15, v2, v9

    const/16 v9, 0x8

    aput v16, v2, v9

    const/16 v9, 0x9

    aput v17, v2, v9

    :try_start_0
    new-instance v9, Lorg/json/JSONArray;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v9, :cond_2

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_2

    const-string v11, "survival"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_7

    const/4 v8, 0x1

    const-string v1, "eventid"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v1, "status"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v13, "title"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v13, "description"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v13, "theme"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v14, "start"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const-string v15, "end"

    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const-string v16, "interval_time"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const-string v17, "position"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const-string v18, "butcher"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const-string v19, "totalbutcher"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const-string v20, "span"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v20, 0x0

    aput v12, v2, v20

    const/4 v12, 0x1

    aput v1, v2, v12

    const/4 v12, 0x2

    aput v13, v2, v12

    const/4 v12, 0x3

    aput v14, v2, v12

    const/4 v12, 0x4

    aput v15, v2, v12

    const/4 v12, 0x5

    aput v16, v2, v12

    const/4 v12, 0x6

    aput v17, v2, v12

    const/4 v12, 0x7

    aput v18, v2, v12

    const/16 v12, 0x8

    aput v19, v2, v12

    const/16 v12, 0x9

    aput v11, v2, v12

    :goto_0
    const/4 v11, 0x1

    if-ne v1, v11, :cond_0

    const-string v1, "milestones"

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v3, v1, [I

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v4, v1, [I

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v5, v1, [I

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v6, v1, [I

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-lt v1, v12, :cond_5

    :cond_0
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual/range {v1 .. v7}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->nativeSurvivalParse([I[I[I[I[II)V

    :cond_1
    move v1, v8

    :cond_2
    if-nez v1, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v1, "status"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_3
    :goto_2
    sget-object v2, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v2, v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->nativeSurvivalParse2(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_3
    const-string v1, "CC_Android fromNative_SurvivalParse"

    const-string v2, "/==========  END  ==========/"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    :try_start_1
    invoke-virtual {v10, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    const-string v13, "milestone"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v3, v1

    const-string v13, "kind"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v4, v1

    const-string v13, "itemid"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v5, v1

    const-string v13, "quantity"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v6, v1

    const-string v13, "message"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :cond_7
    move/from16 v21, v8

    move v8, v1

    move/from16 v1, v21

    goto/16 :goto_0
.end method

.method public static fromNative_URLRequest(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "fromNative"

    const-string v1, "URLRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3045

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static fromNative_UpdateWidget(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static fromNative_VanityKeyboard()V
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->showKeyboard()V

    return-void
.end method

.method public static fromNative_createGatyaTest(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "ZombieCafeAndroidfromNative_createGatyaTestGCM"

    const-string v2, "yokota"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/Android/temp.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/Android/data/temp.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/Android/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v3}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "test.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "ZombieCafeAndroidfromNative_createGatyaTestGCM-sd"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ZombieCafeAndroidfromNative_createGatyaTestGCM-file"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ZombieCafeAndroidfromNative_createGatyaTestGCM-file"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ZombieCafeAndroidfromNative_createGatyaTestGCM-dire"

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ZombieCafeAndroidfromNative_createGatyaTestGCM-dire"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ZombieCafeAndroidfromNative_createGatyaTestGCM-1"

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_2
    return-void
.end method

.method public static fromNative_dismissDialogNoClick()V
    .locals 2

    const-string v0, "DismissDialog"

    const-string v1, "????"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fromNative_doesFileExist(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, ".smurfmap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".smurfsmap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".dat"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".jpg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".caf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2011"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2012"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2013"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".mkt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".crmhvr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "DoesFileExist OUR RESOURCES"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v1, p0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doesFileExist1="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GRRR"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    int-to-long v2, v1

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    :goto_1
    return v0

    :cond_1
    const-string v1, "DoesFileExist ANDROID ASSETS"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    long-to-int v1, v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NATIVEFILEEXIST="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Length="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doesFileExist2="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static fromNative_fileAppend(Ljava/lang/String;II[B)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    int-to-long v4, p1

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2, p2}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromNative_fileDelete(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromNative_fileGetSize(Ljava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    :try_start_0
    const-string v1, ".smurfmap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".smurfsmap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".dat"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".jpg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".caf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2011"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2012"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2013"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".mkt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".crmhvr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v1, p0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :goto_0
    int-to-long v2, v1

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :goto_1
    return v0

    :cond_1
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static fromNative_fileRead(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, ".smurfmap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".smurfsmap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".dat"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".jpg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".caf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2011"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2012"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2013"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".mkt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".crmhvr"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v1, p0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    if-nez v1, :cond_1

    const-string v1, "FILE READ ERROR"

    const-string v2, "NO MEMORY"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    new-array v1, v2, [B

    if-nez v1, :cond_3

    const-string v1, "FILE READ ERROR2"

    const-string v2, "NO MEMORY"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0
.end method

.method public static fromNative_fileRename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RENAME:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TO"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SUCCESS!"

    const-string v1, "FILE RENAMED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromNative_fileWrite(Ljava/lang/String;II[B)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    int-to-long v4, p1

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2, p2}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromNative_freeDialog()V
    .locals 2

    const-string v0, "FreeDialog"

    const-string v1, "???"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fromNative_freeSound()V
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ag:Lcom/capcom/zombiecafeandroidJP/SoundManager;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sget v2, Lcom/capcom/zombiecafeandroidJP/CC_Android;->e:I

    if-lt v0, v2, :cond_1

    :cond_0
    :goto_1
    sget v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->f:I

    if-lt v1, v0, :cond_2

    return-void

    :cond_1
    sget-object v2, Lcom/capcom/zombiecafeandroidJP/CC_Android;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    sget-object v2, Lcom/capcom/zombiecafeandroidJP/CC_Android;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static fromNative_initDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Dialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Title="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "button1"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "button2"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3047

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_initDialogNoCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "DialogCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Title="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "button"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3046

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_initSound(IIZ)Z
    .locals 1

    sput p0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->e:I

    sput p1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->f:I

    const/4 v0, 0x1

    return v0
.end method

.method public static fromNative_isEffectPlaying(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static fromNative_isMusicPlaying(I)Z
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "fromNative_isMusicPlaying"

    const-string v2, "NOMUSIC"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    const-string v1, "fromNative_isMusicPlaying"

    const-string v2, "mMusics == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p0

    if-nez v1, :cond_2

    const-string v1, "fromNative_isMusicPlaying"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mMusics["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] == null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public static fromNative_launchEnterMigrationPasswordActiviy()V
    .locals 2

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    if-eqz v0, :cond_0

    const-string v0, "fromNative_launchEnterMigrationPasswordActiviy"

    const-string v1, " --START--"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3458

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static fromNative_loadAndPlayMusic(IIFZ)V
    .locals 3

    const-string v0, "fromNative_loadAndPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "musicid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->x:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iput p1, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ai:I

    invoke-static {p0}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_stopMusic(I)Z

    invoke-static {p0}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_unloadMusic(I)Z

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->x:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->x:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget v1, v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ai:I

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->GetMusicFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_loadMusic(ILjava/lang/String;)Z

    invoke-static {p0, p3}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_loopMusic(IZ)Z

    invoke-static {p0}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_startMusic(I)Z

    return-void
.end method

.method public static fromNative_loadEffect(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    sget-boolean v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->b:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->g:[Ljava/lang/String;

    aget-object v1, v1, p0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->g:[Ljava/lang/String;

    aget-object v1, v1, p0

    if-eq v1, p1, :cond_0

    :cond_2
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->g:[Ljava/lang/String;

    aput-object p1, v1, p0

    const-string v1, "SOUND: LOAD"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FILENAME: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static fromNative_loadMusic(ILjava/lang/String;)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->a:Z

    if-nez v0, :cond_0

    const-string v0, ""

    if-ne p1, v0, :cond_1

    :cond_0
    move v0, v6

    :goto_0
    return v0

    :cond_1
    const-string v0, ".mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ".mp3"

    const-string v1, ".ogg"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "mMusics == null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "mMusics != null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->h:[Ljava/lang/String;

    aget-object v0, v0, p0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->h:[Ljava/lang/String;

    aget-object v0, v0, p0

    if-ne v0, p1, :cond_5

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-eqz v0, :cond_4

    :try_start_0
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "music already exists"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "mMusics[id] == null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    :try_start_1
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-eqz v0, :cond_c

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "mMusics[id] != null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_6
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    aput-object v1, v0, p0

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->h:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->h:[Ljava/lang/String;

    aput-object p1, v0, p0

    const-string v0, ".wav"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sounds/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_7
    const-string v0, ".mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, ".ogg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const-string v0, ".mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ".mp3"

    const-string v1, ".ogg"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Music/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_a
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "filename: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_2
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    aput-object v1, v0, p0

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "There\'s no file"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    sget v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->n:F

    sget v2, Lcom/capcom/zombiecafeandroidJP/CC_Android;->n:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v7

    goto/16 :goto_0

    :cond_c
    :try_start_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "mMusics[id] == null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aput-object v9, v0, p0

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->h:[Ljava/lang/String;

    aput-object v9, v0, p0

    move v0, v6

    goto/16 :goto_0
.end method

.method public static fromNative_loadTexture(Ljava/lang/String;Z)[I
    .locals 10

    const/4 v9, 0x6

    const/4 v2, 0x0

    const-string v0, "fromNative_loadTexture"

    const-string v1, "function called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    new-array v3, v9, [I

    move v0, v2

    :goto_0
    if-lt v0, v9, :cond_0

    :try_start_0
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0, p0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->CCNextPO2(I)I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->CCNextPO2(I)I

    move-result v5

    const-string v6, "fromNative_loadTexture"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    aput v0, v3, v6

    const/4 v6, 0x1

    aput v5, v3, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    aput v7, v3, v6

    const/4 v6, 0x4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    aput v7, v3, v6

    const/4 v6, 0x5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    aput v7, v3, v6

    const-string v6, "fromNative_loadTexture"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "2: w:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " h:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bitmapWidth:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    aget v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bitmapHeight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    const-string v5, "fromNative_loadTexture"

    const-string v6, "3"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const-string v6, "fromNative_loadTexture"

    const-string v7, "3.5"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const-string v5, "fromNative_loadTexture"

    const-string v6, "4"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    invoke-static {v0}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->generateTexture(Landroid/graphics/Bitmap;)I

    move-result v6

    aput v6, v3, v5

    const-string v5, "fromNative_loadTexture"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "5:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x3

    aget v7, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const-string v0, "fromNative_loadTexture"

    const-string v5, "6"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const-string v0, "fromNative_loadTexture"

    const-string v4, "7"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    const-string v0, "fromNative_loadTexture"

    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v0, v2

    :goto_4
    if-lt v0, v9, :cond_2

    return-object v3

    :cond_0
    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    :try_start_2
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "fromNative_loadTexture"

    const-string v4, "Exception occured"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    const-string v0, "fromNative_loadTexture"

    const-string v1, "done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    const-string v1, "fromNative_loadTexture"

    const-string v2, "done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    const-string v1, "fromNative_loadTexture"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ret["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] == "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public static fromNative_loopMusic(IZ)Z
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->a:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p0

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "fromNative_loopMusic"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mMusics["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "].setLooping("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p0

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "fromNative_loopMusic"

    const-string v3, "Error!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromNative_pauseMusic(I)Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->a:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p0

    if-eqz v1, :cond_0

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static fromNative_setEffectVolume(IF)Z
    .locals 1

    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fromNative_setMusicLoop(IZ)Z
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->a:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "mMusic is null"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p0

    if-nez v1, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mMusics["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fromNative_setMusicVolume(IF)Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->a:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p0

    if-eqz v1, :cond_0

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fromNative_showDialog()V
    .locals 2

    const-string v0, "ShowDialog"

    const-string v1, "????"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fromNative_startEffect(I)Z
    .locals 8

    const/4 v6, 0x0

    const-string v0, "SOUND: START"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->b:Z

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v0, "SOUND: START"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FILENAME: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/capcom/zombiecafeandroidJP/CC_Android;->g:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->m:I

    if-eq v0, p0, :cond_4

    sput p0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->m:I

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->g:[Ljava/lang/String;

    aget-object v0, v0, p0

    const-string v1, ".ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sounds/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "SOUND: START"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FILENAME: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->c:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_5

    const-string v1, "OS ver = "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    const/4 v1, 0x0

    sput-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->c:Landroid/media/MediaPlayer;

    :cond_3
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->c:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->c:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_4
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->c:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_5
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    const-string v1, "OS ver = "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v6

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v6

    goto/16 :goto_0
.end method

.method public static fromNative_startMusic(I)Z
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->a:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fromNative_startMusic id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    const-string v1, "fromNative_startMusic"

    const-string v2, "mMusics == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p0

    if-nez v1, :cond_2

    const-string v1, "fromNative_startMusic"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mMusics["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] == null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v1, "fromNative_startMusic"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mMusics["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "].start()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "fromNative_startMusic"

    const-string v3, "Error!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromNative_stopEffect(I)Z
    .locals 2

    const/4 v0, 0x1

    sget-boolean v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->b:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->c:Landroid/media/MediaPlayer;

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->m:I

    if-ne v1, p0, :cond_0

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    :try_start_0
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromNative_stopMusic(I)Z
    .locals 1

    invoke-static {p0}, Lcom/capcom/zombiecafeandroidJP/CC_Android;->fromNative_pauseMusic(I)Z

    const/4 v0, 0x1

    return v0
.end method

.method public static fromNative_unloadEffect(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static fromNative_unloadMusic(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    sget-boolean v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->a:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    if-nez v1, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "mMusic == null"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aput-object v3, v0, p0

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->h:[Ljava/lang/String;

    aput-object v3, v0, p0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->d:[Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    aput-object v1, v0, p0

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->h:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static generateTexture(Landroid/graphics/Bitmap;)I
    .locals 8

    const/4 v7, 0x1

    const v6, 0x46240400    # 10497.0f

    const/high16 v5, 0x46180000    # 9728.0f

    const/4 v4, 0x0

    const/16 v3, 0xde1

    new-array v0, v7, [I

    const-string v1, "generateTexture"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->i:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v7, v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    const-string v1, "generateTexture"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->i:Ljavax/microedition/khronos/opengles/GL10;

    aget v2, v0, v4

    invoke-interface {v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const-string v1, "generateTexture"

    const-string v2, "2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->i:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0x2801

    invoke-interface {v1, v3, v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->i:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0x2800

    invoke-interface {v1, v3, v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const-string v1, "generateTexture"

    const-string v2, "3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->i:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0x2802

    invoke-interface {v1, v3, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    sget-object v1, Lcom/capcom/zombiecafeandroidJP/CC_Android;->i:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0x2803

    invoke-interface {v1, v3, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const-string v1, "generateTexture"

    const-string v2, "4"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3, v4, p0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    const-string v1, "generateTexture"

    const-string v2, "5"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v0, v0, v4

    return v0
.end method


# virtual methods
.method public getGLObj()V
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->o:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->getGlObj()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    sput-object v0, Lcom/capcom/zombiecafeandroidJP/CC_Android;->i:Ljavax/microedition/khronos/opengles/GL10;

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method
