.class Lcom/capcom/zombiecafeandroidJP/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/av;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->access$1()Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/capcom/zombiecafeandroidJP/av;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    iget-object v2, v2, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->aw:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    invoke-static {v3, v0}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->enterMigrationPassword(Z[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/av;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->ax:Ljava/lang/Boolean;

    return-void
.end method
