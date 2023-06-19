.class final Lcom/capcom/zombiecafeandroid/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-string v0, "END DIALIOG TIMER WENT OFF"

    const-string v1, "DO SOMETHING..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->DialogCallBack()V

    const-string v0, "EULA"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/capcom/zombiecafeandroid/CC_Android;->fromNative_CCOptionsSetBool(Ljava/lang/String;Z)V

    const-string v0, "CHARTBOOST: FROM EULA"

    const-string v1, "CALL CHARTBOOST"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-void
.end method
