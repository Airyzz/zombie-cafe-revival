.class final Lcom/capcom/zombiecafeandroid/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroid/ae;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "POSITIVE BUTTON"

    const-string v1, "DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ONBACKPRESSED"

    const-string v1, "About To Exit, get notifications.."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {v2}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->c(Z)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroid/ae;->a:Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;

    invoke-virtual {v0, v2}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->a(Z)V

    return-void
.end method
