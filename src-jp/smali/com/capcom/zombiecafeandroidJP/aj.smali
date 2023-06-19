.class Lcom/capcom/zombiecafeandroidJP/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/aj;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "TOXIN WARNING"

    const-string v1, "HAS FINISHED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->DialogCallBack()V

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ClearDialogFlag()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
