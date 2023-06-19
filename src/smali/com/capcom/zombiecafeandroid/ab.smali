.class final Lcom/capcom/zombiecafeandroid/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroid/ab;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v1, 0x1

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v1}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->b(Z)V

    const-string v0, "POSITIVE BUTTON"

    const-string v2, "DIALOG"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/ab;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    const-string v2, "title"

    const-string v3, "eula,"

    const-string v4, ""

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->ShowAlertBox(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
