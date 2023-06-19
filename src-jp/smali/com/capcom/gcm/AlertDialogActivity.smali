.class public Lcom/capcom/gcm/AlertDialogActivity;
.super Landroid/support/v4/app/FragmentActivity;


# static fields
.field public static a:Landroid/os/PowerManager$WakeLock;

.field public static b:Landroid/app/KeyguardManager$KeyguardLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/capcom/gcm/AlertDialogActivity;->a:Landroid/os/PowerManager$WakeLock;

    sput-object v0, Lcom/capcom/gcm/AlertDialogActivity;->b:Landroid/app/KeyguardManager$KeyguardLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "AlertDialogActivity"

    const-string v1, "AlertDialogActivity onCreate 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/capcom/gcm/AlertDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x3000001a

    const-string v2, "FindMyPhone"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/capcom/gcm/AlertDialogActivity;->a:Landroid/os/PowerManager$WakeLock;

    sget-object v0, Lcom/capcom/gcm/AlertDialogActivity;->a:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-virtual {p0}, Lcom/capcom/gcm/AlertDialogActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x480000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/capcom/gcm/AlertDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/capcom/gcm/a;->a(Landroid/content/Intent;)Lcom/capcom/gcm/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/capcom/gcm/AlertDialogActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "alert_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/capcom/gcm/a;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const-string v0, "AlertDialogActivity"

    const-string v1, "AlertDialogActivity onCreate 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    const-string v0, "AlertDialogActivity"

    const-string v1, "AlertDialogActivity onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/capcom/gcm/AlertDialogActivity;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/capcom/gcm/AlertDialogActivity;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AlertDialogActivity"

    const-string v1, "AlertDialogActivity onDestroy 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v0, Lcom/capcom/gcm/AlertDialogActivity;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    sput-object v2, Lcom/capcom/gcm/AlertDialogActivity;->a:Landroid/os/PowerManager$WakeLock;

    :cond_0
    sget-object v0, Lcom/capcom/gcm/AlertDialogActivity;->b:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_1

    const-string v0, "AlertDialogActivity"

    const-string v1, "AlertDialogActivity onDestroy 2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    sget-object v0, Lcom/capcom/gcm/AlertDialogActivity;->b:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v2, Lcom/capcom/gcm/AlertDialogActivity;->b:Landroid/app/KeyguardManager$KeyguardLock;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
