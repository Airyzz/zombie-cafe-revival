.class Lcom/chartboost/sdk/CBAPIConnection$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/chartboost/sdk/CBAPIConnection;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/CBAPIConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/chartboost/sdk/CBAPIConnection$1;->this$0:Lcom/chartboost/sdk/CBAPIConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/chartboost/sdk/CBAPIConnection$1;->this$0:Lcom/chartboost/sdk/CBAPIConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/CBAPIConnection;->cancel(Z)Z

    return-void
.end method
