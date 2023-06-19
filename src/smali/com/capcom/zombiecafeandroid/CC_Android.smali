.class public Lcom/capcom/zombiecafeandroid/CC_Android;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field public static NO_EFFECT:Z

.field public static NO_MUSIC:Z

.field private static a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

.field private static b:Z

.field public static glObj:Ljavax/microedition/khronos/opengles/GL10;

.field public static mMusicFiles:[Ljava/lang/String;

.field public static mMusicVolume:F

.field public static mMusics:[Landroid/media/MediaPlayer;

.field public static numMusics:I

.field public static numSoundEffects:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sput-boolean v1, Lcom/capcom/zombiecafeandroid/CC_Android;->NO_MUSIC:Z

    sput-boolean v1, Lcom/capcom/zombiecafeandroid/CC_Android;->NO_EFFECT:Z

    const/4 v0, 0x0

    sput v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusicVolume:F

    new-array v0, v2, [Landroid/media/MediaPlayer;

    sput-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusicFiles:[Ljava/lang/String;

    sput-boolean v1, Lcom/capcom/zombiecafeandroid/CC_Android;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {p1}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getGlObj()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    sput-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->glObj:Ljavax/microedition/khronos/opengles/GL10;

    const-string v0, "CC_Android"

    const-string v1, "Created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a(I)I
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

.method public static fromNative_Accelerometer(Z)V
    .locals 0

    invoke-static {p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->ToggleAccelerometer(Z)V

    return-void
.end method

.method public static fromNative_BuyStuff(I)V
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v0, p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->BuyToxin(I)V

    return-void
.end method

.method public static fromNative_CCOptionsGetBool(Ljava/lang/String;Z)Z
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CCsettings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static fromNative_CCOptionsGetFloat(Ljava/lang/String;F)F
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CCsettings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static fromNative_CCOptionsGetInt(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CCsettings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static fromNative_CCOptionsGetString(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CCsettings:Landroid/content/SharedPreferences;

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

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CCsettings:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromNative_CCOptionsGetUInt(Ljava/lang/String;J)J
    .locals 5

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CCsettings:Landroid/content/SharedPreferences;

    long-to-int v1, p1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CCOptionsGetInt="

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

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CCsettings:Landroid/content/SharedPreferences;

    double-to-long v1, p1

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CCOptionsGetInt="

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
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x303c

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_CCOptionsSetFloat(Ljava/lang/String;F)V
    .locals 0

    return-void
.end method

.method public static fromNative_CCOptionsSetInt(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x303d

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

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

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_CCOptionsSetUInt(Ljava/lang/String;J)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CCOptionsSetUInt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Data="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    long-to-int v2, p1

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x303e

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_CCOptionsSetUInt64(Ljava/lang/String;D)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CCOptionsSetUInt="

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

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CCsettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TestData"

    double-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

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

.method public static fromNative_Chartboost(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x3057

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_Connected()Z
    .locals 1

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONNECTED:Z

    return v0
.end method

.method public static fromNative_DeleteNotification()V
    .locals 0

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

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_FiksuPromptForRating()V
    .locals 0

    return-void
.end method

.method public static fromNative_FiksuRecordEvent(Ljava/lang/String;)V
    .locals 2

    const-string v0, "native_recorddevent"

    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mAndroidID:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static fromNative_FiksuRecordPurchase(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static fromNative_GetAndroidDevice()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static fromNative_GetAndroidID()[B
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mAndroidID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static fromNative_GetCountryCode()[B
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mCountryCode:Ljava/lang/String;

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

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v0, p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getDate(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fromnative_GetDateString"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static fromNative_GetDeviceID()[B
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static fromNative_GetGraphicSet()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static fromNative_GetProductID()[B
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mProductID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static fromNative_HideWebView()V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x3042

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_IsAmazon()Z
    .locals 1

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->amazonKindle:Z

    return v0
.end method

.method public static fromNative_IsConnected()Z
    .locals 2

    const-string v0, "fromNative"

    const-string v1, "Is Connected?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->a()Z

    move-result v0

    return v0
.end method

.method public static fromNative_IsKindle()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Kindle Fire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static fromNative_LaunchCameraManager(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v0, p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->LaunchCameraManager(Ljava/lang/String;)V

    return-void
.end method

.method public static fromNative_LaunchURL(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3043

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_LaunchURL2(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3044

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

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

.method public static fromNative_LoadImageFromURL(Ljava/lang/String;)V
    .locals 2

    const-string v0, "fromNative"

    const-string v1, "LoadImageFromURL - but really just a webpage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3048

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_LoggedIn()Z
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->IsLoggedIn()Z

    move-result v0

    return v0
.end method

.method public static fromNative_MD5Data([BI)[B
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v0, p0, p1}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->md5Data([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static fromNative_MD5String(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v0, p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->md5String(Ljava/lang/String;)Ljava/lang/String;

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

    new-instance v1, Lcom/capcom/zombiecafeandroid/q;

    const-string v2, "url"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "query"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "callback"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/capcom/zombiecafeandroid/q;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "NewRequest"

    const-string v2, "About To Execute"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/capcom/zombiecafeandroid/q;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static fromNative_PaypalButton(Z)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3051

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_ProgressBar(I)V
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->ListFiles()V

    return-void
.end method

.method public static fromNative_SaveCRAMImage([BI)V
    .locals 0

    return-void
.end method

.method public static fromNative_SaveCRAMInfo(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static fromNative_Screenshot(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v0, p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->TakeScreenshot(Ljava/lang/String;)V

    return-void
.end method

.method public static fromNative_SendEmail()V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x3053

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_SendNotification(ILjava/lang/String;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->sendNotification(ILjava/lang/String;II)V

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

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_ShowWebView()V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x3041

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_SoundsLoaded()Z
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mAddingSounds:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static fromNative_UpdateWidget(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static fromNative_VanityKeyboard()V
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->showKeyboard()V

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
    .locals 5

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
    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v1, p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :goto_0
    int-to-long v1, v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    :goto_1
    return v0

    :cond_1
    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V
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
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

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

    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getFilesDir()Ljava/io/File;

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
    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v1, p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

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
    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v3

    long-to-int v1, v3

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
    .locals 3

    :try_start_0
    const-string v0, ".smurfmap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".smurfsmap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".dat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".jpg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".caf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2011"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2012"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2013"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".mkt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".crmhvr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v0, p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    new-array v0, v1, [B

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

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

    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v2}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getFilesDir()Ljava/io/File;

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
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

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

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sget v2, Lcom/capcom/zombiecafeandroid/CC_Android;->numSoundEffects:I

    if-lt v0, v2, :cond_1

    :cond_0
    :goto_1
    sget v0, Lcom/capcom/zombiecafeandroid/CC_Android;->numMusics:I

    if-lt v1, v0, :cond_2

    return-void

    :cond_1
    sget-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    invoke-virtual {v2, v0}, Lcom/capcom/zombiecafeandroid/SoundManager;->stopSound(I)V

    sget-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    invoke-virtual {v2, v0}, Lcom/capcom/zombiecafeandroid/SoundManager;->unloadSound(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

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

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

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

    invoke-static {v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->runSystemThread(ILandroid/os/Bundle;)V

    return-void
.end method

.method public static fromNative_initSound(IIZ)Z
    .locals 1

    sput p0, Lcom/capcom/zombiecafeandroid/CC_Android;->numSoundEffects:I

    sput p1, Lcom/capcom/zombiecafeandroid/CC_Android;->numMusics:I

    const/4 v0, 0x1

    return v0
.end method

.method public static fromNative_isEffectPlaying(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static fromNative_isMusicPlaying(I)Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/capcom/zombiecafeandroid/CC_Android;->NO_MUSIC:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p0

    if-eqz v1, :cond_0

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method public static fromNative_loadEffect(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static fromNative_loadMusic(ILjava/lang/String;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/CC_Android;->NO_MUSIC:Z

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "mMusics == null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "mMusics != null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "mMusics[id] != null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    aput-object v1, v0, p0

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusicFiles:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, ".mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ".mp3"

    const-string v1, ".ogg"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusicFiles:[Ljava/lang/String;

    aput-object p1, v0, p0

    const-string v0, ".wav"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sounds/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    const-string v0, ".mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ".ogg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    const-string v0, ".mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ".mp3"

    const-string v1, ".ogg"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Music/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_7
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "filename: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_1
    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    aput-object v1, v0, p0

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-long v0, v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "There\'s no file"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    sget v1, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusicVolume:F

    sget v2, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusicVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v7

    goto/16 :goto_0

    :cond_9
    :try_start_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "mMusics[id] == null"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aput-object v9, v0, p0

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusicFiles:[Ljava/lang/String;

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
    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v0, p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/CC_Android;->a(I)I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v5}, Lcom/capcom/zombiecafeandroid/CC_Android;->a(I)I

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

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/CC_Android;->generateTexture(Landroid/graphics/Bitmap;)I

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

.method public static fromNative_setEffectVolume(IF)Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/capcom/zombiecafeandroid/CC_Android;->NO_EFFECT:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    if-nez v1, :cond_1

    const-string v1, "setEffectVolume"

    const-string v2, "No Sound Manager :("

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    invoke-virtual {v0, p0, p1}, Lcom/capcom/zombiecafeandroid/SoundManager;->setVolume(IF)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fromNative_setMusicLoop(IZ)Z
    .locals 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/capcom/zombiecafeandroid/CC_Android;->NO_MUSIC:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "mMusic is null"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

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
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fromNative_setMusicVolume(IF)Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/capcom/zombiecafeandroid/CC_Android;->NO_MUSIC:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p0

    if-eqz v1, :cond_0

    sput p1, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusicVolume:F

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " volume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "mMusic setVolume done"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

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

.method public static fromNative_startEffect(IF)Z
    .locals 1

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/CC_Android;->NO_EFFECT:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    invoke-virtual {v0, p0, p1}, Lcom/capcom/zombiecafeandroid/SoundManager;->playSound(IF)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static fromNative_startMusic(I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/capcom/zombiecafeandroid/CC_Android;->NO_MUSIC:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "Zombie Theme V1.ogg"

    invoke-static {v0, v2}, Lcom/capcom/zombiecafeandroid/CC_Android;->fromNative_loadMusic(ILjava/lang/String;)Z

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fromNative_startMusic id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v2, v2, p0

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/capcom/zombiecafeandroid/CC_Android;->b:Z

    if-nez v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v2, v2, p0

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v2, v2, p0

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    :cond_2
    const/4 v2, 0x1

    sput-boolean v2, Lcom/capcom/zombiecafeandroid/CC_Android;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static fromNative_stopEffect(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static fromNative_stopMusic(I)Z
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/capcom/zombiecafeandroid/CC_Android;->b:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/capcom/zombiecafeandroid/CC_Android;->NO_MUSIC:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v1, v1, p0

    if-eqz v1, :cond_0

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/CC_Android;->b:Z

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x1

    goto :goto_0
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

    sget-boolean v1, Lcom/capcom/zombiecafeandroid/CC_Android;->NO_MUSIC:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

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

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aput-object v3, v0, p0

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusicFiles:[Ljava/lang/String;

    aput-object v3, v0, p0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_3
    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusics:[Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    aput-object v1, v0, p0

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->mMusicFiles:[Ljava/lang/String;

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

    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->glObj:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, v7, v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    const-string v1, "generateTexture"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->glObj:Ljavax/microedition/khronos/opengles/GL10;

    aget v2, v0, v4

    invoke-interface {v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    const-string v1, "generateTexture"

    const-string v2, "2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->glObj:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0x2801

    invoke-interface {v1, v3, v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->glObj:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0x2800

    invoke-interface {v1, v3, v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const-string v1, "generateTexture"

    const-string v2, "3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->glObj:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0x2802

    invoke-interface {v1, v3, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    sget-object v1, Lcom/capcom/zombiecafeandroid/CC_Android;->glObj:Ljavax/microedition/khronos/opengles/GL10;

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

    sget-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getGlObj()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    sput-object v0, Lcom/capcom/zombiecafeandroid/CC_Android;->glObj:Ljavax/microedition/khronos/opengles/GL10;

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
