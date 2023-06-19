.class final Lcom/capcom/zombiecafeandroid/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroid/ac;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v2}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->b(Z)V

    const-string v0, "NEGATIVE BUTTON"

    const-string v1, "DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/ac;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v0, v2}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->a(Z)V

    goto :goto_0
.end method
