.class final Lcom/capcom/zombiecafeandroid/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroid/aa;->a:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->c()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/aa;->a:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
