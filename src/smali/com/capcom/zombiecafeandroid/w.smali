.class final Lcom/capcom/zombiecafeandroid/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "NEGATIVE BUTTON"

    const-string v1, "DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->c(Z)V

    return-void
.end method
