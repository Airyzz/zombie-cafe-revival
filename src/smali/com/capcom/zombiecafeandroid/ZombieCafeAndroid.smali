.class public Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/capcom/zombiecafeandroid/a;


# static fields
.field public static CCsettings:Landroid/content/SharedPreferences; = null

.field public static CONNECTED:Z = false

.field public static CONTEXT:Landroid/content/Context; = null

.field public static FriendList:[Lcom/capcom/zombiecafeandroid/f; = null

.field public static final GAMESTATE_BACKUPSELECTION:I = 0xa

.field public static final GAMESTATE_BUSY:I = 0x7

.field public static final GAMESTATE_CAFE:I = 0x1

.field public static final GAMESTATE_CHOOSECHEF:I = 0x6

.field public static final GAMESTATE_FRIENDCAFE:I = 0x2

.field public static final GAMESTATE_FRIENDS:I = 0xb

.field public static final GAMESTATE_HELP:I = 0x4

.field public static final GAMESTATE_LOADING:I = 0x8

.field public static final GAMESTATE_MAINMENU:I = 0x0

.field public static final GAMESTATE_MAP:I = 0x3

.field public static final GAMESTATE_OPTIONS:I = 0x5

.field public static final GAMESTATE_RAID:I = 0x9

.field public static USEINTERNET:Z = false

.field public static _cb:Lcom/chartboost/sdk/ChartBoost; = null

.field private static a:Landroid/os/Handler; = null

.field public static alreadyLoaded:Z = false

.field public static amazonKindle:Z = false

.field private static b:Landroid/app/AlarmManager; = null

.field public static currentState:I = 0x0

.field private static d:Landroid/webkit/WebView; = null

.field private static e:Landroid/widget/RelativeLayout; = null

.field private static f:[Ljava/lang/String; = null

.field private static g:[I = null

.field private static i:Landroid/app/ProgressDialog; = null

.field private static j:Z = false

.field private static k:Z = false

.field public static lastPurchase:Ljava/lang/String; = null

.field public static lowmem:I = 0x0

.field public static mAddingSounds:Z = false

.field public static mAlert:Landroid/app/AlertDialog; = null

.field public static mAllowLogin:Z = false

.field public static mAndroidID:Ljava/lang/String; = null

.field public static mAsyncRunner:Lcom/capcom/facebook/a; = null

.field public static mBuilder:Landroid/app/AlertDialog$Builder; = null

.field public static final mBuySmurfberries:I = 0x3055

.field public static mBuyingBerries:Z = false

.field public static final mCCOptionsSetBoolean:I = 0x303c

.field public static final mCCOptionsSetInt:I = 0x303d

.field public static final mCCOptionsSetLong:I = 0x3040

.field public static final mCCOptionsSetString:I = 0x303f

.field public static final mCCOptionsSetUInt:I = 0x303e

.field public static mCC_Android:Lcom/capcom/zombiecafeandroid/CC_Android; = null

.field public static final mCRAMAction:I = 0x3050

.field public static final mChartBoost:I = 0x3057

.field public static mConnManager:Lorg/apache/http/conn/ClientConnectionManager; = null

.field public static mCountryCode:Ljava/lang/String; = null

.field public static mDebug:Z = false

.field public static mDeviceId:Ljava/lang/String; = null

.field public static mDeviceModel:Ljava/lang/String; = null

.field public static mDeviceNumber:I = 0x0

.field public static mDeviceType:Lcom/capcom/zombiecafeandroid/DeviceType; = null

.field public static mDialogType:I = 0x0

.field public static mDisplay:Landroid/view/Display; = null

.field public static final mEnterFacebook:I = 0x3049

.field public static mFacebook:Lcom/capcom/facebook/Facebook; = null

.field public static final mFileExist:I = 0x3054

.field public static mFirstTime:Z = false

.field public static mGL10:Ljavax/microedition/khronos/opengles/GL10; = null

.field public static mGLView:Landroid/opengl/GLSurfaceView; = null

.field public static final mHideVanityKeyboard:I = 0x304f

.field public static mHttpClient2:Lorg/apache/http/impl/client/DefaultHttpClient; = null

.field public static final mInitDialog:I = 0x3047

.field public static final mInitDialogNoCallback:I = 0x3046

.field public static final mLaunchURL:I = 0x3043

.field public static final mLaunchURL2:I = 0x3044

.field public static final mLoadImageFromURL:I = 0x3048

.field public static mLoggedIn:Z = false

.field public static final mMouseUp:I = 0x304c

.field public static mMusicOnce:Z = false

.field public static final mNewRequest:I = 0x304a

.field public static final mObfuscate:I = 0xd903

.field public static final mPaypalButton:I = 0x3051

.field public static mProductID:Ljava/lang/String; = null

.field public static final mProgressBar:I = 0x3056

.field public static final mReloadTextures:I = 0x304b

.field public static mScreenHeight:I = 0x0

.field public static mScreenOn:Z = false

.field public static mScreenWidth:I = 0x0

.field public static final mSendEmail:I = 0x3053

.field public static final mShowCRAMImage:I = 0x3052

.field public static final mShowDialog:I = 0x3039

.field public static final mShowToast:I = 0x303a

.field public static final mShowVanityKeyboard:I = 0x304e

.field public static mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager; = null

.field public static mTouchBusy:Z = false

.field public static mTouchTime:I = 0x0

.field public static mURLManager:Lcom/capcom/zombiecafeandroid/URLManager; = null

.field public static final mURLRequest:I = 0x3045

.field public static final mUpdateWidget:I = 0x304d

.field public static mUserAgent:Ljava/lang/String; = null

.field public static mVanityText:Ljava/lang/String; = null

.field public static mWarning:Ljava/lang/String; = null

.field public static final mWebViewHideHelp:I = 0x3042

.field public static final mWebViewShowHelp:I = 0x3041

.field public static notificationNumber:I

.field public static numTouches:I

.field public static purchaseAmount:I

.field public static purchaseName:Ljava/lang/String;

.field public static purchaseSlot:I

.field public static testSound:I

.field public static toast:Landroid/widget/Toast;

.field public static toastcreated:Z

.field public static touchVectors:[F


# instance fields
.field private c:Lcom/capcom/zombiecafeandroid/b;

.field private h:Landroid/content/BroadcastReceiver;

.field private l:Ljava/lang/Runnable;

.field public mCameramanager:Lcom/cameramanager/Cameramanager;

.field public mImage:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-boolean v3, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->USEINTERNET:Z

    sput-boolean v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONNECTED:Z

    sput-boolean v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mDebug:Z

    sput-boolean v3, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mFirstTime:Z

    const-string v0, ""

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->lastPurchase:Ljava/lang/String;

    sput-boolean v3, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenOn:Z

    sput-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mDeviceType:Lcom/capcom/zombiecafeandroid/DeviceType;

    const-string v0, ""

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mDeviceId:Ljava/lang/String;

    sput-boolean v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuyingBerries:Z

    sput-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mDisplay:Landroid/view/Display;

    sput-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mURLManager:Lcom/capcom/zombiecafeandroid/URLManager;

    const/4 v0, -0x1

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->currentState:I

    sput-boolean v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->amazonKindle:Z

    const-string v0, ""

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseName:Ljava/lang/String;

    sput v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseSlot:I

    sput v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseAmount:I

    const-string v0, ""

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mVanityText:Ljava/lang/String;

    sput-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->d:Landroid/webkit/WebView;

    const/16 v0, 0x20

    new-array v0, v0, [F

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->touchVectors:[F

    sput-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mGLView:Landroid/opengl/GLSurfaceView;

    sput v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->lowmem:I

    sput-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mCC_Android:Lcom/capcom/zombiecafeandroid/CC_Android;

    sput-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CCsettings:Landroid/content/SharedPreferences;

    sput-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    sput-boolean v3, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mAddingSounds:Z

    sput v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->testSound:I

    const/16 v0, 0x40

    new-array v0, v0, [Lcom/capcom/zombiecafeandroid/f;

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->FriendList:[Lcom/capcom/zombiecafeandroid/f;

    sput-boolean v3, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mAllowLogin:Z

    sput-boolean v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->toastcreated:Z

    const v0, 0x67e91

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->notificationNumber:I

    new-array v0, v4, [Ljava/lang/String;

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->f:[Ljava/lang/String;

    new-array v0, v4, [I

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->g:[I

    const-string v0, "ZombieCafeAndroid"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sput-boolean v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mMusicOnce:Z

    sput-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->i:Landroid/app/ProgressDialog;

    sput-boolean v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->j:Z

    sput-boolean v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->k:Z

    sput-boolean v3, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->alreadyLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mImage:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->c:Lcom/capcom/zombiecafeandroid/b;

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mCameramanager:Lcom/cameramanager/Cameramanager;

    new-instance v0, Lcom/capcom/zombiecafeandroid/v;

    invoke-direct {v0, p0}, Lcom/capcom/zombiecafeandroid/v;-><init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->h:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/capcom/zombiecafeandroid/x;

    invoke-direct {v0, p0}, Lcom/capcom/zombiecafeandroid/x;-><init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->l:Ljava/lang/Runnable;

    return-void
.end method

.method public static native CheckDoneLoading()Z
.end method

.method public static native CheckIfInHelpScreen()Z
.end method

.method public static native ClearDialogFlag()V
.end method

.method public static native DialogCallBack()V
.end method

.method public static native HandleBackButton()Z
.end method

.method public static PrintMemory()V
    .locals 8

    const-string v0, "===MEMORY==="

    const-string v1, "===MEMORY==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " "

    const-string v1, " "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Max="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Free="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, " "

    const-string v1, " "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "======END======"

    const-string v1, "=====END======"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static ProgressBar(I)V
    .locals 4

    packed-switch p0, :pswitch_data_0

    const-string v0, "Progress Bar"

    const-string v1, "BAD VALUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "Progress Bar"

    const-string v1, "OFF!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->i:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    :pswitch_1
    const-string v0, "Progress Bar"

    const-string v1, "ON!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "Please wait..."

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->i:Landroid/app/ProgressDialog;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static native PurchaseAndroidToxin(I)V
.end method

.method public static native StartNotifications()V
.end method

.method public static ToggleAccelerometer(Z)V
    .locals 3

    if-nez p0, :cond_1

    invoke-static {}, Lcom/capcom/zombiecafeandroid/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/capcom/zombiecafeandroid/b;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/capcom/zombiecafeandroid/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONTEXT:Landroid/content/Context;

    check-cast v0, Lcom/capcom/zombiecafeandroid/a;

    const/high16 v1, 0x3f000000    # 0.5f

    const/16 v2, 0x14d

    invoke-static {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/b;->a(Lcom/capcom/zombiecafeandroid/a;FI)V

    goto :goto_0
.end method

.method private static a(Landroid/app/Activity;)Ljava/lang/CharSequence;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "EULA"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->a(Ljava/io/Closeable;)V

    :goto_1
    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->a(Ljava/io/Closeable;)V

    const-string v0, ""

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    invoke-static {v1}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->a(Ljava/io/Closeable;)V

    :goto_1
    return-object v0

    :cond_0
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->a(Ljava/io/Closeable;)V

    const-string v0, ""

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_3
    invoke-static {v1}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a()Z
    .locals 2

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mURLManager:Lcom/capcom/zombiecafeandroid/URLManager;

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/URLManager;->a(Landroid/content/Context;)Z

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->USEINTERNET:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONNECTED:Z

    if-eqz v0, :cond_0

    const-string v0, "We have internet"

    const-string v1, "and are connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "We are not connected"

    const-string v1, "ignore server time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static addSounds()V
    .locals 3

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/4 v1, 0x0

    const v2, 0x7f050001

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/4 v1, 0x1

    const/high16 v2, 0x7f050000

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/4 v1, 0x2

    const v2, 0x7f050003

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/4 v1, 0x3

    const v2, 0x7f050004

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/4 v1, 0x4

    const v2, 0x7f050005

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/4 v1, 0x5

    const v2, 0x7f050006

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/4 v1, 0x6

    const v2, 0x7f050007

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/4 v1, 0x7

    const v2, 0x7f050008

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x8

    const v2, 0x7f05000b

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x9

    const v2, 0x7f05000c

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xa

    const v2, 0x7f05000e

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xb

    const v2, 0x7f05000f

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xc

    const v2, 0x7f050027

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xd

    const v2, 0x7f050031

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xe

    const v2, 0x7f05004d

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xf

    const v2, 0x7f05004e

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x10

    const v2, 0x7f050050

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x11

    const v2, 0x7f050051

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x12

    const v2, 0x7f050052

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x13

    const v2, 0x7f050053

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x14

    const v2, 0x7f050054

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x15

    const v2, 0x7f05005d

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x16

    const v2, 0x7f050068

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x17

    const v2, 0x7f05006d

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x18

    const v2, 0x7f05006e

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x19

    const v2, 0x7f05006f

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x1a

    const v2, 0x7f050070

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x1b

    const v2, 0x7f050071

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x1c

    const v2, 0x7f050072

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x1d

    const v2, 0x7f050073

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x1e

    const v2, 0x7f05005e

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x1f

    const v2, 0x7f05005f

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x20

    const v2, 0x7f05009a

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x21

    const v2, 0x7f05009b

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x22

    const v2, 0x7f05009c

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x23

    const v2, 0x7f05009d

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x24

    const v2, 0x7f050010

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x25

    const v2, 0x7f05001b

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x26

    const v2, 0x7f05001e

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x27

    const v2, 0x7f05001f

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x28

    const v2, 0x7f050020

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x29

    const v2, 0x7f050021

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x2a

    const v2, 0x7f050022

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x2b

    const v2, 0x7f050023

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x2c

    const v2, 0x7f050024

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x2d

    const v2, 0x7f050011

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x2e

    const v2, 0x7f050012

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x2f

    const v2, 0x7f050013

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x30

    const v2, 0x7f050014

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x31

    const v2, 0x7f050015

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x32

    const v2, 0x7f050016

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x33

    const v2, 0x7f050017

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x34

    const v2, 0x7f050018

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x35

    const v2, 0x7f050019

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x36

    const v2, 0x7f05001a

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x37

    const v2, 0x7f05001c

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x38

    const v2, 0x7f05001d

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x39

    const v2, 0x7f050082

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x3a

    const v2, 0x7f0500c1

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x3b

    const v2, 0x7f050028

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x3c

    const v2, 0x7f050029

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x3d

    const v2, 0x7f05002a

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x3e

    const v2, 0x7f050095

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x3f

    const v2, 0x7f05009e

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x40

    const v2, 0x7f0500a0

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x41

    const v2, 0x7f050030

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x42

    const v2, 0x7f050058

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x43

    const v2, 0x7f050075

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x44

    const v2, 0x7f050076

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x45

    const v2, 0x7f050077

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x46

    const v2, 0x7f050078

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x47

    const v2, 0x7f050079

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x48

    const v2, 0x7f0500b1

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x49

    const v2, 0x7f0500b7

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x4a

    const v2, 0x7f0500b8

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x4b

    const v2, 0x7f0500b9

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x4c

    const v2, 0x7f0500ba

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x4d

    const v2, 0x7f0500bc

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x4e

    const v2, 0x7f0500bd

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x4f

    const v2, 0x7f0500be

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x50

    const v2, 0x7f0500bb

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x51

    const v2, 0x7f0500b2

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x52

    const v2, 0x7f0500b3

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x53

    const v2, 0x7f0500b4

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x54

    const v2, 0x7f0500b5

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x55

    const v2, 0x7f0500b6

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x56

    const v2, 0x7f050055

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x57

    const v2, 0x7f050056

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x58

    const v2, 0x7f050057

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x59

    const v2, 0x7f05004f

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x5a

    const v2, 0x7f050097

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x5b

    const v2, 0x7f050099

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x5c

    const v2, 0x7f0500c3

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x5d

    const v2, 0x7f0500c4

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x5e

    const v2, 0x7f0500c5

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x5f

    const v2, 0x7f0500c6

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x60

    const v2, 0x7f0500c7

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x61

    const v2, 0x7f05004c

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x62

    const v2, 0x7f0500bf

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x63

    const v2, 0x7f050096

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x64

    const v2, 0x7f05007d

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x65

    const v2, 0x7f05007f

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x66

    const v2, 0x7f050080

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x67

    const v2, 0x7f050081

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x68

    const v2, 0x7f05007a

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x69

    const v2, 0x7f05007b

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x6a

    const v2, 0x7f05007c

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x6b

    const v2, 0x7f050060

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x6c

    const v2, 0x7f050061

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x6d

    const v2, 0x7f050062

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x6e

    const v2, 0x7f050063

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x6f

    const v2, 0x7f050064

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x70

    const v2, 0x7f050065

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x71

    const v2, 0x7f050066

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x72

    const v2, 0x7f050067

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x73

    const v2, 0x7f050069

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x74

    const v2, 0x7f05006a

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x75

    const v2, 0x7f05006b

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x76

    const v2, 0x7f05006c

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x77

    const v2, 0x7f0500a4

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x78

    const v2, 0x7f0500a5

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x79

    const v2, 0x7f0500a6

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x7a

    const v2, 0x7f0500a7

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x7b

    const v2, 0x7f0500a8

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x7c

    const v2, 0x7f0500a9

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x7d

    const v2, 0x7f0500aa

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x7e

    const v2, 0x7f050044

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x7f

    const v2, 0x7f050046

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x80

    const v2, 0x7f050047

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x81

    const v2, 0x7f050048

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x82

    const v2, 0x7f050049

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x83

    const v2, 0x7f05004a

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x84

    const v2, 0x7f05004b

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x85

    const v2, 0x7f050045

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x86

    const v2, 0x7f050038

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x87

    const v2, 0x7f050039

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x88

    const v2, 0x7f05003a

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x89

    const v2, 0x7f050059

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x8a

    const v2, 0x7f05005a

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x8b

    const v2, 0x7f05005b

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x8c

    const v2, 0x7f05005c

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x8d

    const v2, 0x7f05008a

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x8e

    const v2, 0x7f05008b

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x8f

    const v2, 0x7f05008c

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x90

    const v2, 0x7f05008d

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x91

    const v2, 0x7f050092

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x92

    const v2, 0x7f050093

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x93

    const v2, 0x7f050094

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x94

    const v2, 0x7f05008e

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x95

    const v2, 0x7f05008f

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x96

    const v2, 0x7f050090

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x97

    const v2, 0x7f050091

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x98

    const v2, 0x7f050083

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x99

    const v2, 0x7f050084

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x9a

    const v2, 0x7f050085

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x9b

    const v2, 0x7f050086

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x9c

    const v2, 0x7f050087

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x9d

    const v2, 0x7f050088

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x9e

    const v2, 0x7f050089

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0x9f

    const v2, 0x7f05003b

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xa0

    const v2, 0x7f05003c

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xa1

    const v2, 0x7f05003d

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xa2

    const v2, 0x7f05003e

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xa3

    const v2, 0x7f05003f

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xa4

    const v2, 0x7f050040

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xa5

    const v2, 0x7f050041

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xa6

    const v2, 0x7f050042

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xa7

    const v2, 0x7f050043

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xa8

    const v2, 0x7f050033

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xa9

    const v2, 0x7f050034

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xaa

    const v2, 0x7f050035

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xab

    const v2, 0x7f050036

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xac

    const v2, 0x7f050037

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xad

    const v2, 0x7f0500ca

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xae

    const v2, 0x7f0500cb

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xaf

    const v2, 0x7f0500c8

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xb0

    const v2, 0x7f0500c9

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xb1

    const v2, 0x7f0500ab

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xb2

    const v2, 0x7f0500ac

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xb3

    const v2, 0x7f0500ad

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xb4

    const v2, 0x7f0500ae

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xb5

    const v2, 0x7f0500af

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xb6

    const v2, 0x7f0500b0

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xb7

    const v2, 0x7f05000d

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xb8

    const v2, 0x7f050002

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xb9

    const v2, 0x7f050009

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xba

    const v2, 0x7f0500a1

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xbb

    const v2, 0x7f0500a2

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xbc

    const v2, 0x7f0500a3

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xbd

    const v2, 0x7f050098

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xbe

    const v2, 0x7f0500c2

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xbf

    const v2, 0x7f050032

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xc0

    const v2, 0x7f05002b

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xc1

    const v2, 0x7f05002c

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xc2

    const v2, 0x7f05002d

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xc3

    const v2, 0x7f05002e

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xc4

    const v2, 0x7f05002f

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xc5

    const v2, 0x7f05000a

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xc6

    const v2, 0x7f050026

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xc7

    const v2, 0x7f050025

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xc8

    const v2, 0x7f05009f

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/16 v1, 0xc9

    const v2, 0x7f050074

    invoke-virtual {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/SoundManager;->addSound(II)V

    return-void
.end method

.method static synthetic b()Landroid/webkit/WebView;
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic b(Z)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->j:Z

    return-void
.end method

.method public static boughtAmazonToxin()V
    .locals 2

    const-string v0, "BOUGHT ZOMBIE TOXIN FROM AMAZON, GIVE THE FOLLOWING:"

    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseAmount:I

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->PurchaseAndroidToxin(I)V

    return-void
.end method

.method public static boughtToxin(Ljava/lang/String;)V
    .locals 2

    const-string v0, "BOUGHT ZOMBIE TOXI FROM GOOGLE, GIVE THE FOLLOWING:"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseSlot:I

    const-string v0, "zc_50_toxin_3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseSlot:I

    :cond_0
    :goto_0
    sget v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseSlot:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "No Toxin!"

    const-string v1, "Bad! Bad!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    const-string v0, "zc_125_toxin_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseSlot:I

    goto :goto_0

    :cond_2
    const-string v0, "zc_350_toxin_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseSlot:I

    goto :goto_0

    :cond_3
    const-string v0, "zc_800_toxin_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseSlot:I

    goto :goto_0

    :cond_4
    const-string v0, "zc_2000_toxin_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseSlot:I

    goto :goto_0

    :pswitch_0
    const-string v0, "Product 0"

    const-string v1, "50 Toxin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x32

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseAmount:I

    :goto_2
    sget v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseAmount:I

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->PurchaseAndroidToxin(I)V

    goto :goto_1

    :pswitch_1
    const-string v0, "Product 1"

    const-string v1, "125 Toxin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x7d

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseAmount:I

    goto :goto_2

    :pswitch_2
    const-string v0, "Product 2"

    const-string v1, "350 Toxin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x15e

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseAmount:I

    goto :goto_2

    :pswitch_3
    const-string v0, "Product 3"

    const-string v1, "800 Toxin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x320

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseAmount:I

    goto :goto_2

    :pswitch_4
    const-string v0, "Product 4"

    const-string v1, "2000 Toxin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x7d0

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseAmount:I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic c()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Z)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->k:Z

    return-void
.end method

.method static synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->j:Z

    return v0
.end method

.method public static deleteNotification()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "DeleteNotifications"

    const-string v2, "DELETE!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONTEXT:Landroid/content/Context;

    const-class v3, Lcom/capcom/zombiecafeandroid/AlarmReceiver;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move v0, v1

    :goto_0
    sget-object v3, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->f:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unique"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->notificationNumber:I

    add-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget-object v3, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONTEXT:Landroid/content/Context;

    const v4, 0x2f145

    invoke-static {v3, v4, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    :try_start_0
    sget-object v4, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->b:Landroid/app/AlarmManager;

    invoke-virtual {v4, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v3, "AlarmManager update was not canceled. "

    const-string v4, "FAILED!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static native deviceShaken()V
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONTEXT:Landroid/content/Context;

    return-object v0
.end method

.method public static native mouseDown(FFI)V
.end method

.method public static native mouseMove([FI)V
.end method

.method public static mouseMoves(FFFFI)V
    .locals 3

    const/4 v2, 0x2

    if-le p4, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->touchVectors:[F

    shl-int/lit8 v1, p4, 0x1

    aput p0, v0, v1

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->touchVectors:[F

    shl-int/lit8 v1, p4, 0x1

    add-int/lit8 v1, v1, 0x1

    aput p1, v0, v1

    sget v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->numTouches:I

    if-ge v0, v2, :cond_1

    sget v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->numTouches:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->numTouches:I

    :cond_1
    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->touchVectors:[F

    sget v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->numTouches:I

    invoke-static {v0, v1}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mouseMove([FI)V

    goto :goto_0
.end method

.method public static native mouseUp(FFI)V
.end method

.method public static runSystemThread(ILandroid/os/Bundle;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/capcom/zombiecafeandroid/aa;

    invoke-direct {v2, v0}, Lcom/capcom/zombiecafeandroid/aa;-><init>(Landroid/os/Message;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static sendNotification(ILjava/lang/String;II)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZombieCafeAndroid: Notification="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "TOW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONTEXT:Landroid/content/Context;

    const-class v3, Lcom/capcom/zombiecafeandroid/AlarmReceiver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unique"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->notificationNumber:I

    add-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "alarm_message"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "type"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "time"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONTEXT:Landroid/content/Context;

    const v3, 0x2f145

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    sget-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->b:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const-string v0, "ZombieCafeAndroid: Unique ID"

    sget v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->notificationNumber:I

    add-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ZombieCafeAndroid: Notification Text"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ZombieCafeAndroid: Offset Time"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "EXCEPTION ERROR"

    const-string v1, "SETTING NOTIFICATION ALARM"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static native setDeviceModel(Ljava/lang/String;)V
.end method

.method public static native setVanityString(Ljava/lang/String;)V
.end method

.method public static native updateAccelerometer(FFF)V
.end method


# virtual methods
.method public BuyToxin(I)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Player is attempting"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "To buy some smurfberries="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput p1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseSlot:I

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->amazonKindle:Z

    if-eqz v0, :cond_0

    const-string v0, "We are using Amazon"

    const-string v1, "Create the class"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "com.capcom.zombiecafeandroid.zc_50_toxin_3"

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseName:Ljava/lang/String;

    const/16 v0, 0x32

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseAmount:I

    :goto_1
    sput-boolean v3, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuyingBerries:Z

    goto :goto_0

    :pswitch_1
    const-string v0, "com.capcom.zombiecafeandroid.zc_125_toxin_2"

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseName:Ljava/lang/String;

    const/16 v0, 0x7d

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseAmount:I

    goto :goto_1

    :pswitch_2
    const-string v0, "com.capcom.zombiecafeandroid.zc_350_toxin_2"

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseName:Ljava/lang/String;

    const/16 v0, 0x15e

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseAmount:I

    goto :goto_1

    :pswitch_3
    const-string v0, "com.capcom.zombiecafeandroid.zc_800_toxin_2"

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseName:Ljava/lang/String;

    const/16 v0, 0x320

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseAmount:I

    goto :goto_1

    :pswitch_4
    const-string v0, "com.capcom.zombiecafeandroid.zc_2000_toxin_2"

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseName:Ljava/lang/String;

    const/16 v0, 0x7d0

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->purchaseAmount:I

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONTEXT:Landroid/content/Context;

    const-class v2, Lcom/capcom/billing/SmurfsBilling;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "NumberOfItems"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_5
    const-string v1, "ItemName0"

    const-string v2, "zc_50_toxin_3"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ItemCost0"

    const-string v2, "$4.99"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    sput-boolean v3, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuyingBerries:Z

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_6
    const-string v1, "ItemName0"

    const-string v2, "zc_125_toxin_2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ItemCost0"

    const-string v2, "$9.99"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :pswitch_7
    const-string v1, "ItemName0"

    const-string v2, "zc_350_toxin_2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ItemCost0"

    const-string v2, "$24.99"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :pswitch_8
    const-string v1, "ItemName0"

    const-string v2, "zc_800_toxin_2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ItemCost0"

    const-string v2, "$49.99"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :pswitch_9
    const-string v1, "ItemName0"

    const-string v2, "zc_2000_toxin_2"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ItemCost0"

    const-string v2, "$99.99"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public IsLoggedIn()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mURLManager:Lcom/capcom/zombiecafeandroid/URLManager;

    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONTEXT:Landroid/content/Context;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroid/URLManager;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "IsLoggedIn"

    const-string v2, "NO! User does not have internet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-boolean v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mLoggedIn:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public LaunchCameraManager(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/cameramanager/Cameramanager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "==================================LaunchCamera"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "filename"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public ListFiles()V
    .locals 8

    const/4 v1, 0x0

    const-string v0, "INTERNAL"

    const-string v2, "FILES"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "Our files are stored at"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    const-string v0, "SDCARD"

    const-string v2, "FILES"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "Our files are stored at"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    array-length v2, v0

    if-lt v1, v2, :cond_2

    :cond_0
    :goto_2
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "FileSize"

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/capcom/zombiecafeandroid/CC_Android;->fromNative_CCSecondsSince1970()J

    move-result-wide v3

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xe10

    div-long/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "FileName Length="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Hours Ago="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "FileSize"

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_3
    const-string v0, "NO SDCARD"

    const-string v1, "NO SDCARD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public ShowAlertBox(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    sput p1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mDialogType:I

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    packed-switch p1, :pswitch_data_0

    :goto_0
    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_0
    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuilder:Landroid/app/AlertDialog$Builder;

    const-string v1, "License"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-static {p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->a(Landroid/app/Activity;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/capcom/zombiecafeandroid/ab;

    invoke-direct {v1, p0}, Lcom/capcom/zombiecafeandroid/ab;-><init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/capcom/zombiecafeandroid/ac;

    invoke-direct {v1, p0}, Lcom/capcom/zombiecafeandroid/ac;-><init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V

    invoke-virtual {v0, p5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->amazonKindle:Z

    if-eqz v0, :cond_0

    const-string v0, "Zombie Cafe is free to play, but you have the option to purchase extra Toxin. Purchasing toxin will be charged to your Amazon Appstore account."

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mWarning:Ljava/lang/String;

    :goto_1
    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuilder:Landroid/app/AlertDialog$Builder;

    const-string v1, "Warning!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mWarning:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const-string v0, "Zombie Cafe is free to play, but you have the option to purchase extra Toxin. Purchasing toxin will be charged to your credit card from Google Play."

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mWarning:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuilder:Landroid/app/AlertDialog$Builder;

    const-string v1, "Warning!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuilder:Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mWarning:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/capcom/zombiecafeandroid/ad;

    invoke-direct {v1, p0}, Lcom/capcom/zombiecafeandroid/ad;-><init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :pswitch_3
    sput-boolean v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->k:Z

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuilder:Landroid/app/AlertDialog$Builder;

    const-string v1, "Exit Game"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuilder:Landroid/app/AlertDialog$Builder;

    const-string v1, "EXIT"

    invoke-static {p0, v1}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->a(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/capcom/zombiecafeandroid/ae;

    invoke-direct {v1, p0}, Lcom/capcom/zombiecafeandroid/ae;-><init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/capcom/zombiecafeandroid/w;

    invoke-direct {v1, p0}, Lcom/capcom/zombiecafeandroid/w;-><init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V

    invoke-virtual {v0, p5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public TakeScreenshot(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Screenshot="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "W="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " H="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenWidth:I

    sget v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenHeight:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->javaTakeScreenshot(Ljava/lang/String;II)V

    return-void
.end method

.method final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "FORCEGAME EXIT"

    const-string v1, "Kill the whole game"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "FORCEGAME EXIT"

    const-string v1, "Keep running..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->finish()V

    goto :goto_1
.end method

.method public clearNotifications()V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->f:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    move v0, v1

    :goto_1
    sget-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->g:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    return-void

    :cond_0
    sget-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->f:[Ljava/lang/String;

    const-string v3, "Your Cafe Needs Attention!"

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->g:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "&&&&&&&"

    const-string v1, "&&&&&&"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "dispatchKeyEvent, looking for:26"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Hardware Key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "&&&&&&&"

    const-string v1, "&&&&&&"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    const-string v0, "POWER KEY WAS HIT"

    const-string v1, "STOP MUSIC! SAVE GAME, START NOTIFICATIONS"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/CC_Android;->NO_MUSIC:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/CC_Android;->fromNative_stopMusic(I)Z

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDate(I)Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Current time => "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Date with Time="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getGlObj()Ljavax/microedition/khronos/opengles/GL10;
    .locals 1

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mGLView:Landroid/opengl/GLSurfaceView;

    check-cast v0, Lcom/capcom/zombiecafeandroid/SmurfsGLSurfaceView;

    iget-object v0, v0, Lcom/capcom/zombiecafeandroid/SmurfsGLSurfaceView;->mRenderer:Lcom/capcom/zombiecafeandroid/CapcomRenderer;

    sget-object v0, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->glObj:Ljavax/microedition/khronos/opengles/GL10;

    return-object v0
.end method

.method public hideKeyboard()V
    .locals 0

    return-void
.end method

.method public javaTakeScreenshot(Ljava/lang/String;II)V
    .locals 15

    sget-object v1, Lcom/capcom/zombiecafeandroid/CapcomRenderer;->glObj:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0x3e8

    move/from16 v0, p2

    if-le v0, v2, :cond_1

    move/from16 v0, p2

    add-int/lit16 v4, v0, -0xc8

    add-int/lit8 v5, p3, -0x64

    :goto_0
    mul-int v14, v4, v5

    shl-int/lit8 v2, v14, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    invoke-interface/range {v1 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    new-array v7, v14, [I

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    sub-int v8, v14, v4

    neg-int v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v4

    move v13, v5

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    new-array v2, v14, [S

    invoke-static {v2}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v14, :cond_0

    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v6, v3}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDCARD Write Out File"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v6, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string v2, "Took Screen Shot???"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bitmap W"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bitmap H"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    aget-short v4, v2, v1

    and-int/lit8 v5, v4, 0x1f

    shl-int/lit8 v5, v5, 0xb

    and-int/lit16 v7, v4, 0x7e0

    or-int/2addr v5, v7

    const v7, 0xf800

    and-int/2addr v4, v7

    shr-int/lit8 v4, v4, 0xb

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_1
    move/from16 v5, p3

    move/from16 v4, p2

    goto/16 :goto_0
.end method

.method public md5Data([BI)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "Md5DataIn"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "length="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    array-length v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    shl-int/lit8 v4, v2, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    if-lt v0, v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v4, v1, v0

    and-int/lit8 v4, v4, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public md5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    array-length v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    shl-int/lit8 v0, v2, 0x1

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v4, v1, v0

    and-int/lit8 v4, v4, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onAccelerationChanged(FFF)V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const-string v0, "OnActivityResult"

    const-string v1, "Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 6

    const-string v0, "ONBACKPRESSED"

    const-string v1, "Handle Back Button"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->HandleBackButton()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->k:Z

    if-nez v0, :cond_0

    const-string v0, "ONBACKPRESSED"

    const-string v1, "About show exit dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    const-string v2, "title"

    const-string v3, "back"

    const-string v4, "Yes"

    const-string v5, "No"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->ShowAlertBox(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v3, 0x400

    const/16 v5, 0x100

    const/4 v4, 0x1

    sput-object p0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONTEXT:Landroid/content/Context;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->setVolumeControlStream(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mDeviceModel:Ljava/lang/String;

    const-string v0, "ZombiecafeAndroid.java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mDeviceModel = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mDeviceModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->setDeviceModel(Ljava/lang/String;)V

    const-string v0, "==================="

    const-string v1, "=========="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "==================="

    const-string v1, "=========="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ZOMBIECAFE ONCREATE"

    const-string v1, "IS RUNNING"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "==================="

    const-string v1, "=========="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "==================="

    const-string v1, "=========="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/tapjoy/g;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/capcom/zombiecafeandroid/y;

    invoke-direct {v0, p0}, Lcom/capcom/zombiecafeandroid/y;-><init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->b:Landroid/app/AlarmManager;

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v4}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    const-string v0, "Notification"

    const-string v1, "Cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->notificationNumber:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    sget v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->notificationNumber:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    sget v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->notificationNumber:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    sget v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->notificationNumber:I

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    sget v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->notificationNumber:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->clearNotifications()V

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mDisplay:Landroid/view/Display;

    const-string v0, "CHARTBOOST"

    const-string v1, "INITED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-static {p0}, Lcom/chartboost/sdk/ChartBoost;->getSharedChartBoost(Landroid/content/Context;)Lcom/chartboost/sdk/ChartBoost;

    move-result-object v0

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->_cb:Lcom/chartboost/sdk/ChartBoost;

    const-string v1, "4f624676f77659bc6c00000c"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/ChartBoost;->setAppId(Ljava/lang/String;)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->_cb:Lcom/chartboost/sdk/ChartBoost;

    const-string v1, "e570bf0b918ca355089e1136ea79f23dd67304de"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/ChartBoost;->setAppSignature(Ljava/lang/String;)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->_cb:Lcom/chartboost/sdk/ChartBoost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/ChartBoost;->install()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const-string v0, "CHARTBOOST"

    const-string v1, "ENDED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/capcom/facebook/Facebook;

    const-string v1, "382489408434263"

    invoke-direct {v0, v1}, Lcom/capcom/facebook/Facebook;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mFacebook:Lcom/capcom/facebook/Facebook;

    const-string v0, "ZombieCafeAndroid"

    const-string v1, "About to start sound manager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/capcom/zombiecafeandroid/SoundManager;

    invoke-direct {v0}, Lcom/capcom/zombiecafeandroid/SoundManager;-><init>()V

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/CC_Android;->NO_EFFECT:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/capcom/zombiecafeandroid/u;

    invoke-direct {v0}, Lcom/capcom/zombiecafeandroid/u;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroid/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    new-instance v0, Lcom/capcom/zombiecafeandroid/SmurfsGLSurfaceView;

    invoke-direct {v0, p0}, Lcom/capcom/zombiecafeandroid/SmurfsGLSurfaceView;-><init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v4}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/view/Window;->setFlags(II)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenWidth:I

    sget v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->e:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->setContentView(Landroid/view/View;)V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "TAPJOY"

    const-string v1, "Exception, CRASH!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v0, "CHARTBOOST"

    const-string v1, "Say what we didn\'t send the request correctly?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "====================="

    const-string v1, "=================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity in OnDestroy"

    const-string v1, "Should be finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "====================="

    const-string v1, "=================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/16 v4, 0x54

    const/4 v0, 0x1

    const-string v1, "&&&&&&&"

    const-string v2, "&&&&&&"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "onKeydown"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Hardware Key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "&&&&&&&"

    const-string v2, "&&&&&&"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p1, v4, :cond_0

    const/16 v1, 0x6f

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1a

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    sget v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->lowmem:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->lowmem:I

    const-string v0, "ERROR!!!"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LOW MEMORY TIMES="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->lowmem:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "&&&&&"

    const-string v1, "&&&&"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity in OnPause"

    const-string v1, "About To Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "&&&&&"

    const-string v1, "&&&&"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroid/SoundManager;->setEnabled(Z)V

    :cond_0
    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->d:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->d:Landroid/webkit/WebView;

    :cond_1
    sget-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuyingBerries:Z

    if-eqz v0, :cond_2

    const-string v0, "ONPause, Buying berries"

    const-string v1, "so don\'t start notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->StartNotifications()V

    :try_start_0
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "onPause"

    const-string v2, "Error: unregisterReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPostResume()V
    .locals 2

    const-string v0, "Activity in OnPostResume"

    const-string v1, "After exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    return-void
.end method

.method protected onRestart()V
    .locals 2

    const-string v0, "Activity in OnRestart"

    const-string v1, "After exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 8

    const/4 v7, 0x1

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v6, 0x0

    const-string v0, "Activity in OnResume"

    const-string v1, "After exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONTEXT:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Activity in OnResume"

    const-string v1, "Locked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    const-string v0, "Activity in OnResume"

    const-string v1, "After exit 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mBuyingBerries:Z

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->clearNotifications()V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mURLManager:Lcom/capcom/zombiecafeandroid/URLManager;

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONTEXT:Landroid/content/Context;

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/URLManager;->a(Landroid/content/Context;)Z

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mURLManager:Lcom/capcom/zombiecafeandroid/URLManager;

    invoke-static {}, Lcom/capcom/zombiecafeandroid/URLManager;->a()V

    invoke-static {}, Lcom/capcom/zombiecafeandroid/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/capcom/zombiecafeandroid/b;->a(Lcom/capcom/zombiecafeandroid/a;)V

    :cond_1
    const-string v0, "Activity in OnResume"

    const-string v1, "After exit 3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->d:Landroid/webkit/WebView;

    if-nez v0, :cond_2

    const-string v0, "OnResume...WEBVIEW IS NULL"

    const-string v1, "GET A NEW ONE!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sget v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenWidth:I

    int-to-float v1, v1

    const v2, 0x3e19999a

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenHeight:I

    int-to-float v2, v2

    const v3, 0x3e6147ae

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sget v3, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenWidth:I

    int-to-float v3, v3

    const v4, 0x3d4ccccd

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sget v4, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenHeight:I

    int-to-float v4, v4

    const v5, 0x3ea3d70a

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/webkit/WebView;

    sget-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mGLView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->d:Landroid/webkit/WebView;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->e:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->amazonKindle:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->d:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/data/help_amazon.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->d:Landroid/webkit/WebView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v0, "About to the Check Help Screen"

    const-string v1, "HELP?"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CheckIfInHelpScreen()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "HelpScreen"

    const-string v1, "Turn ON!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_2
    :goto_2
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->deleteNotification()V

    invoke-virtual {p0, v6}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getDate(I)Ljava/lang/String;

    return-void

    :cond_3
    const-string v0, "Activity in OnResume"

    const-string v1, "Unlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/capcom/zombiecafeandroid/CC_Android;->fromNative_startMusic(I)Z

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mSoundManager:Lcom/capcom/zombiecafeandroid/SoundManager;

    invoke-virtual {v0, v7}, Lcom/capcom/zombiecafeandroid/SoundManager;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->d:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/data/help_google.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v0, "HelpScreen"

    const-string v1, "Turn OFF!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->d:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onShake(F)V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onShake with force "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->deviceShaken()V

    return-void
.end method

.method public onStart()V
    .locals 4

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sput-object p0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONTEXT:Landroid/content/Context;

    const-string v1, "====================="

    const-string v2, "=================="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Zombie Cafe ONSTART"

    const-string v2, "Get Devices"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "====================="

    const-string v2, "=================="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->amazonKindle:Z

    if-eqz v1, :cond_0

    const-string v1, "ADDING AMAZON IAP"

    const-string v2, "REGISTER THE OBSERVER"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PURCHASHING MANAGER"

    const-string v2, "HAS BEEN REGISTERED"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CCsettings:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    const-string v1, "Options"

    invoke-virtual {p0, v1, v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CCsettings:Landroid/content/SharedPreferences;

    :cond_1
    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->c:Lcom/capcom/zombiecafeandroid/b;

    if-nez v1, :cond_2

    new-instance v1, Lcom/capcom/zombiecafeandroid/b;

    invoke-direct {v1}, Lcom/capcom/zombiecafeandroid/b;-><init>()V

    iput-object v1, p0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->c:Lcom/capcom/zombiecafeandroid/b;

    :cond_2
    const/high16 v1, 0x3f000000    # 0.5f

    const/16 v2, 0x14d

    invoke-static {p0, v1, v2}, Lcom/capcom/zombiecafeandroid/b;->a(Lcom/capcom/zombiecafeandroid/a;FI)V

    const-string v1, "===DEVICE INFO==="

    const-string v2, "===DEVICE INFO==="

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    sput v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenWidth:I

    invoke-static {}, Lcom/capcom/zombiecafeandroid/CC_Android;->fromNative_IsKindle()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v1, 0x244

    sput v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenHeight:I

    :goto_0
    const-string v1, "Manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Device"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Board"

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ScreenWidth="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ScreenHeight="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mDeviceType:Lcom/capcom/zombiecafeandroid/DeviceType;

    if-nez v1, :cond_3

    new-instance v1, Lcom/capcom/zombiecafeandroid/DeviceType;

    invoke-direct {v1}, Lcom/capcom/zombiecafeandroid/DeviceType;-><init>()V

    sput-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mDeviceType:Lcom/capcom/zombiecafeandroid/DeviceType;

    :cond_3
    invoke-static {}, Lcom/capcom/zombiecafeandroid/DeviceType;->getDeviceID()V

    sput v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mDeviceNumber:I

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mProductID:Ljava/lang/String;

    const-string v1, "PRODUCTID"

    sget-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mProductID:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mProductID:Ljava/lang/String;

    const-string v2, " "

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONTEXT:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mCountryCode:Ljava/lang/String;

    const-string v1, "COUNTRYCODE"

    sget-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mCountryCode:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "======END======"

    const-string v2, "=====END======"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->amazonKindle:Z

    if-eqz v1, :cond_7

    const-string v1, "http.agent"

    const-string v2, "ZombieCafe/1.0.2.0a Amazon"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mUserAgent:Ljava/lang/String;

    const-string v1, "ANDROID USER AGENT"

    sget-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mUserAgent:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Final ScreenWidth="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Final ScreenHeight="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/capcom/zombiecafeandroid/z;

    invoke-direct {v1, p0}, Lcom/capcom/zombiecafeandroid/z;-><init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V

    sput-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->a:Landroid/os/Handler;

    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mCC_Android:Lcom/capcom/zombiecafeandroid/CC_Android;

    if-nez v1, :cond_4

    new-instance v1, Lcom/capcom/zombiecafeandroid/CC_Android;

    invoke-direct {v1, p0}, Lcom/capcom/zombiecafeandroid/CC_Android;-><init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V

    sput-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mCC_Android:Lcom/capcom/zombiecafeandroid/CC_Android;

    invoke-virtual {v1}, Lcom/capcom/zombiecafeandroid/CC_Android;->getGLObj()V

    :cond_4
    :goto_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_8

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mURLManager:Lcom/capcom/zombiecafeandroid/URLManager;

    if-nez v0, :cond_5

    new-instance v0, Lcom/capcom/zombiecafeandroid/URLManager;

    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONTEXT:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/capcom/zombiecafeandroid/URLManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mURLManager:Lcom/capcom/zombiecafeandroid/URLManager;

    :cond_5
    const-string v0, ""

    sput-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mVanityText:Ljava/lang/String;

    return-void

    :cond_6
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    sput v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mScreenHeight:I

    goto/16 :goto_0

    :cond_7
    const-string v1, "http.agent"

    const-string v2, "ZombieCafe/1.0.2.0a"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_8
    sget-object v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->touchVectors:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "====================="

    const-string v1, "=================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity in OnStop"

    const-string v1, "About to exit?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "====================="

    const-string v1, "=================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/capcom/zombiecafeandroid/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/capcom/zombiecafeandroid/b;->b()V

    :cond_0
    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->StartNotifications()V

    return-void
.end method

.method public showKeyboard()V
    .locals 0

    return-void
.end method
