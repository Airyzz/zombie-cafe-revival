.class final Lcom/capcom/zombiecafeandroid/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroid/d;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/d;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    iget-object v1, p0, Lcom/capcom/zombiecafeandroid/d;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    invoke-static {v1}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->b(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)I

    move-result v1

    iget-object v2, p0, Lcom/capcom/zombiecafeandroid/d;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    invoke-static {v2}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->c(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/capcom/zombiecafeandroid/d;->a:Lcom/capcom/zombiecafeandroid/CapcomFacebook;

    invoke-static {v3}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->d(Lcom/capcom/zombiecafeandroid/CapcomFacebook;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/capcom/zombiecafeandroid/CapcomFacebook;->ExecuteFacebook(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
