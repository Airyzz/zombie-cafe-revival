.class public Lcom/capcom/zombiecafeandroid/CapcomFacebook;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;

.field public static final ccRequestState_FriendInfo:I = 0x1

.field public static final ccRequestState_MyId:I = 0x4

.field public static final ccRequestState_MyInfo:I = 0x2

.field public static final ccRequestState_None:I = 0x0

.field public static final ccRequestState_PostImage:I = 0x3

.field public static final kFacebookGetFriends:I = 0x3

.field public static final kFacebookGetInfo:I = 0x5

.field public static final kFacebookInit:I = 0x8

.field public static final kFacebookIsLoggedIn:I = 0x7

.field public static final kFacebookLogin:I = 0x2

.field public static final kFacebookLogout:I = 0x6

.field public static final kFacebookMsgCancel:I = 0x2

.field public static final kFacebookMsgError:I = 0x1

.field public static final kFacebookMsgLoggedIn:I = 0x4

.field public static final kFacebookMsgLoggedOut:I = 0x5

.field public static final kFacebookMsgNone:I = 0x0

.field public static final kFacebookMsgSuccess:I = 0x3

.field public static final kFacebookPostStory:I = 0x4

.field public static final kFacebookPostWall:I = 0x0

.field public static final kFacebookUploadPic:I = 0x1


# instance fields
.field private b:Lcom/capcom/facebook/Facebook;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Activity;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field public mFirstName:Ljava/lang/String;

.field public mIconPath:Ljava/lang/String;

.field public mId:Ljava/lang/String;

.field public mLastName:Ljava/lang/String;

.field public mLink:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mStory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "publish_stream"

    aput-object v1, v0, v2

    sput-object v0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->a:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EnterFacebook Asynchronously="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "String="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->e:I

    iput-object p2, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->g:Ljava/lang/String;

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->CONTEXT:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->d:Landroid/app/Activity;

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mFacebook:Lcom/capcom/facebook/Facebook;

    iput-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/capcom/zombiecafeandroid/d;

    invoke-direct {v1, p0}, Lcom/capcom/zombiecafeandroid/d;-><init>(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)Lcom/capcom/facebook/Facebook;
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    return-object v0
.end method

.method static synthetic a(Lcom/capcom/zombiecafeandroid/CapcomFacebook;I)V
    .locals 0

    iput p1, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->h:I

    return-void
.end method

.method static synthetic b(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)I
    .locals 1

    iget v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->e:I

    return v0
.end method

.method static synthetic c(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static native onFacebook(Z)V
.end method

.method public static native sendFriendInfo(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setFBInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public ExecuteFacebook(ILjava/lang/String;)V
    .locals 3

    const-string v0, "EXECUTE"

    const-string v1, "DAMN IT!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->restoreCredentials(Lcom/capcom/facebook/Facebook;)Z

    iget v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->e:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "CapcomFaceBook"

    const-string v1, "Gonna Post On Wall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "facebookMessage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    :goto_1
    iput-object p2, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {v0}, Lcom/capcom/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->login()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->postToWall(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "CapcomFaceBook"

    const-string v1, "Gonna Upload a Picture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "facebookMessage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    :goto_2
    iput-object p2, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {v0}, Lcom/capcom/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->login()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->uploadPicture(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "CapcomFaceBook"

    const-string v1, "log in if session is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->login()V

    goto :goto_0

    :pswitch_3
    const-string v0, "CapcomFaceBook"

    const-string v1, "Getting List of Friends?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {v0}, Lcom/capcom/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CapcomFaceBook - Logged On"

    const-string v1, "Getsmurffriends()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->getZombieFriends()V

    goto :goto_0

    :pswitch_4
    iput-object p2, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->mStory:Ljava/lang/String;

    const-string v0, "CapcomFaceBook, post smurf story"

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->mStory:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {v0}, Lcom/capcom/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->login()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->postStory()V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "CapcomFaceBook"

    const-string v1, "Get Name, Id of User"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {v0}, Lcom/capcom/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->getInfo()V

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "CapcomFaceBook change account"

    const-string v1, "log out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->logout()V

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "CapcomFaceBook isLoggedin"

    const-string v1, "return isSessionValid()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {v0}, Lcom/capcom/facebook/Facebook;->isSessionValid()Z

    move-result v0

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mLoggedIn:Z

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {v0}, Lcom/capcom/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->login()V

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "INIT FACEBOOK USER DATA"

    const-string v1, "IF INVALID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {v0}, Lcom/capcom/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->d:Landroid/app/Activity;

    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/capcom/facebook/Facebook;->setAccessToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/capcom/facebook/Facebook;->setAccessExpires(J)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->saveCredentials(Lcom/capcom/facebook/Facebook;)Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mLoggedIn:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->saveCredentials(Lcom/capcom/facebook/Facebook;)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mLoggedIn:Z

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->getInfo()V

    goto/16 :goto_0

    :cond_5
    move-object p2, v0

    goto/16 :goto_2

    :cond_6
    move-object p2, v0

    goto/16 :goto_1

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

.method public ExecuteFacebook(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Execute Facebook"

    const-string v1, "Inside CapcomFaceBook"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->restoreCredentials(Lcom/capcom/facebook/Facebook;)Z

    iget v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->e:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "CapcomFaceBook"

    const-string v1, "Gonna Post On Wall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "facebookMessage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_1
    iput-object p2, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {v0}, Lcom/capcom/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->login()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->postToWall(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "CapcomFaceBook"

    const-string v1, "Gonna Upload a Picture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "facebookMessage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    :goto_2
    iput-object p2, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {v0}, Lcom/capcom/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->login()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->uploadPicture(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "CapcomFaceBook"

    const-string v1, "log in if session is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->login()V

    goto :goto_0

    :pswitch_3
    const-string v0, "CapcomFaceBook"

    const-string v1, "Getting List of Friends?"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {v0}, Lcom/capcom/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "CapcomFaceBook - Logged On"

    const-string v1, "Get Zombie Friends()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->getZombieFriends()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->login()V

    goto :goto_0

    :pswitch_4
    iput-object p2, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->mStory:Ljava/lang/String;

    iput-object p3, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->mIconPath:Ljava/lang/String;

    const-string v0, "CapcomFaceBook, post story"

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->mStory:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {v0}, Lcom/capcom/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->login()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->postStory()V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "CapcomFaceBook"

    const-string v1, "Get Name, Id of User"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {v0}, Lcom/capcom/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->getInfo()V

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "CapcomFaceBook change account"

    const-string v1, "log out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->logout()V

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "CapcomFaceBook isLoggedin"

    const-string v1, "return isSessionValid()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {v0}, Lcom/capcom/facebook/Facebook;->isSessionValid()Z

    move-result v0

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mLoggedIn:Z

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "INIT FACEBOOK USER DATA"

    const-string v1, "IF INVALID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {v0}, Lcom/capcom/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/capcom/facebook/Facebook;->logout(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/capcom/facebook/Facebook;->setAccessToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/capcom/facebook/Facebook;->setAccessExpires(J)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->saveCredentials(Lcom/capcom/facebook/Facebook;)Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mLoggedIn:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->saveCredentials(Lcom/capcom/facebook/Facebook;)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mLoggedIn:Z

    invoke-virtual {p0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->getInfo()V

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

.method public getFriendInfo()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "Get Personal Info"

    const-string v1, "From The Friend List"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->h:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const-string v1, "Request Info About"

    sget-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->FriendList:[Lcom/capcom/zombiecafeandroid/f;

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/capcom/facebook/a;

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-direct {v1, v2}, Lcom/capcom/facebook/a;-><init>(Lcom/capcom/facebook/Facebook;)V

    sget-object v2, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->FriendList:[Lcom/capcom/zombiecafeandroid/f;

    new-instance v2, Lcom/capcom/zombiecafeandroid/g;

    invoke-direct {v2, p0}, Lcom/capcom/zombiecafeandroid/g;-><init>(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)V

    invoke-virtual {v1, v3, v2}, Lcom/capcom/facebook/a;->a(Ljava/lang/String;Lcom/capcom/facebook/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getInfo()V
    .locals 3

    new-instance v0, Lcom/capcom/facebook/a;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-direct {v0, v1}, Lcom/capcom/facebook/a;-><init>(Lcom/capcom/facebook/Facebook;)V

    const-string v1, "me"

    new-instance v2, Lcom/capcom/zombiecafeandroid/i;

    invoke-direct {v2, p0}, Lcom/capcom/zombiecafeandroid/i;-><init>(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)V

    invoke-virtual {v0, v1, v2}, Lcom/capcom/facebook/a;->a(Ljava/lang/String;Lcom/capcom/facebook/c;)V

    return-void
.end method

.method public getZombieFriends()V
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

    new-instance v0, Lcom/capcom/facebook/a;

    iget-object v3, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-direct {v0, v3}, Lcom/capcom/facebook/a;-><init>(Lcom/capcom/facebook/Facebook;)V

    const-string v3, "POST"

    new-instance v4, Lcom/capcom/zombiecafeandroid/h;

    invoke-direct {v4, p0}, Lcom/capcom/zombiecafeandroid/h;-><init>(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)V

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/capcom/facebook/a;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/capcom/facebook/c;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->h:I

    return-void
.end method

.method public login()V
    .locals 5

    const-string v0, "Capcom Login"

    const-string v1, "facebook.authorize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->d:Landroid/app/Activity;

    sget-object v2, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->a:[Ljava/lang/String;

    const/4 v3, -0x1

    new-instance v4, Lcom/capcom/zombiecafeandroid/j;

    invoke-direct {v4, p0}, Lcom/capcom/zombiecafeandroid/j;-><init>(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/capcom/facebook/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/capcom/facebook/f;)V

    return-void
.end method

.method public logout()V
    .locals 3

    :try_start_0
    const-string v0, "Clear Credentials"

    const-string v1, "token=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/capcom/facebook/Facebook;->logout(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/capcom/facebook/Facebook;->setAccessToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/capcom/facebook/Facebook;->setAccessExpires(J)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-virtual {p0, v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->saveCredentials(Lcom/capcom/facebook/Facebook;)Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mLoggedIn:Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->onFacebook(Z)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public postFriendsWall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "About to post on friends wall"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "message"

    const-string v1, "Write This On Friends Wall"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "method"

    const-string v1, "stream.publish"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/capcom/facebook/a;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-direct {v0, v1}, Lcom/capcom/facebook/a;-><init>(Lcom/capcom/facebook/Facebook;)V

    const-string v1, ""

    const-string v3, "POST"

    new-instance v4, Lcom/capcom/zombiecafeandroid/e;

    invoke-direct {v4, p0}, Lcom/capcom/zombiecafeandroid/e;-><init>(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/capcom/facebook/a;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/capcom/facebook/c;Ljava/lang/Object;)V

    return-void
.end method

.method public postStory()V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Post Story"

    const-string v2, "On Facebook Wall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GETTING mStory"

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->mStory:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GETTING mIconPath"

    const-string v2, "Use Hard Coded Path"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "picture"

    const-string v2, "http://zombiecafe.capcomcanada.com/zca/FBIcon.png"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->amazonKindle:Z

    if-eqz v1, :cond_0

    const-string v1, "link"

    const-string v2, "http://www.amazon.com/gp/mas/dl/android?p=com.capcom.zombiecafeandroid"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "caption"

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->mStory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->d:Landroid/app/Activity;

    const-string v3, "feed"

    new-instance v4, Lcom/capcom/zombiecafeandroid/l;

    invoke-direct {v4, p0}, Lcom/capcom/zombiecafeandroid/l;-><init>(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/capcom/facebook/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/capcom/facebook/f;)V

    return-void

    :cond_0
    const-string v1, "link"

    const-string v2, "https://market.android.com/details?id=com.capcom.ZombieCafeAndroid"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public postToWall(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->d:Landroid/app/Activity;

    const-string v3, "stream.publish"

    new-instance v4, Lcom/capcom/zombiecafeandroid/l;

    invoke-direct {v4, p0}, Lcom/capcom/zombiecafeandroid/l;-><init>(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)V

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/capcom/facebook/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/capcom/facebook/f;)V

    return-void
.end method

.method public restoreCredentials(Lcom/capcom/facebook/Facebook;)Z
    .locals 5

    const-wide/16 v0, 0x0

    const-string v2, "access_token"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/capcom/zombiecafeandroid/CC_Android;->fromNative_CCOptionsGetStringJava(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/capcom/facebook/Facebook;->setAccessToken(Ljava/lang/String;)V

    :try_start_0
    const-string v2, "expires_in"

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/capcom/zombiecafeandroid/CC_Android;->fromNative_CCOptionsGetUInt64(Ljava/lang/String;D)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    double-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/capcom/facebook/Facebook;->setAccessExpires(J)V

    invoke-virtual {p1}, Lcom/capcom/facebook/Facebook;->isSessionValid()Z

    move-result v0

    return v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public saveCredentials(Lcom/capcom/facebook/Facebook;)Z
    .locals 3

    const-string v0, "access_token"

    invoke-virtual {p1}, Lcom/capcom/facebook/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/capcom/zombiecafeandroid/CC_Android;->fromNative_CCOptionsSetString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "expires_in"

    invoke-virtual {p1}, Lcom/capcom/facebook/Facebook;->getAccessExpires()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/capcom/zombiecafeandroid/CC_Android;->fromNative_CCOptionsSetUInt64(Ljava/lang/String;D)V

    const/4 v0, 0x1

    return v0
.end method

.method public updateFriends()V
    .locals 3

    new-instance v0, Lcom/capcom/facebook/a;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-direct {v0, v1}, Lcom/capcom/facebook/a;-><init>(Lcom/capcom/facebook/Facebook;)V

    const-string v1, "me/friends"

    new-instance v2, Lcom/capcom/zombiecafeandroid/h;

    invoke-direct {v2, p0}, Lcom/capcom/zombiecafeandroid/h;-><init>(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)V

    invoke-virtual {v0, v1, v2}, Lcom/capcom/facebook/a;->a(Ljava/lang/String;Lcom/capcom/facebook/c;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->h:I

    return-void
.end method

.method public uploadPicture(Ljava/lang/String;)V
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

    const-string v3, "My Zombie Cafe"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/capcom/facebook/a;

    iget-object v3, p0, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b:Lcom/capcom/facebook/Facebook;

    invoke-direct {v0, v3}, Lcom/capcom/facebook/a;-><init>(Lcom/capcom/facebook/Facebook;)V

    const-string v3, "POST"

    new-instance v4, Lcom/capcom/zombiecafeandroid/k;

    invoke-direct {v4, p0}, Lcom/capcom/zombiecafeandroid/k;-><init>(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)V

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/capcom/facebook/a;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/capcom/facebook/c;Ljava/lang/Object;)V

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
