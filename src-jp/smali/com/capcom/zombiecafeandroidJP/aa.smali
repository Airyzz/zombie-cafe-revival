.class Lcom/capcom/zombiecafeandroidJP/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;


# direct methods
.method constructor <init>(Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/zombiecafeandroidJP/aa;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/capcom/zombiecafeandroidJP/aa;->a:Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/capcom/zombiecafeandroidJP/ZombieCafeAndroid;->forceGameExit(Z)V

    return-void
.end method
