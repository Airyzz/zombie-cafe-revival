.class final Lcom/capcom/zombiecafeandroid/ad;
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

    const-string v0, "TOXIN WARNING"

    const-string v1, "HAS FINISHED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->DialogCallBack()V

    invoke-static {}, Lcom/capcom/zombiecafeandroid/ZombieCafeAndroid;->ClearDialogFlag()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
