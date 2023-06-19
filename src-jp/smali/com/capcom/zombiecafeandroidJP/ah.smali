.class Lcom/capcom/zombiecafeandroidJP/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/ac;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroidJP/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/ah;->a:Lcom/capcom/zombiecafeandroidJP/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->S:Ljava/lang/String;

    sget v1, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->T:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->DownloadFromUrlForPurchase(Ljava/lang/String;I[B)V

    return-void
.end method
