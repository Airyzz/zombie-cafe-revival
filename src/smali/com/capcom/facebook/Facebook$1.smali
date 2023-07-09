.class Lcom/capcom/facebook/Facebook$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/capcom/facebook/Facebook;->doThing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/capcom/facebook/Facebook;

.field final synthetic val$s:Ljava/lang/String;

# direct methods
.method constructor <init>(Lcom/capcom/facebook/Facebook;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/capcom/facebook/Facebook;

    .line 44
    iput-object p1, p0, Lcom/capcom/facebook/Facebook$1;->this$0:Lcom/capcom/facebook/Facebook;

    iput-object p2, p0, Lcom/capcom/facebook/Facebook$1;->val$s:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/capcom/facebook/Facebook$1;->this$0:Lcom/capcom/facebook/Facebook;

    iget-object v1, p0, Lcom/capcom/facebook/Facebook$1;->val$s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/capcom/facebook/Facebook;->toast(Ljava/lang/String;)V

    .line 18
    return-void
.end method