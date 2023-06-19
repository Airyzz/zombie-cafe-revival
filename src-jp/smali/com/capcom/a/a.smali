.class public Lcom/capcom/a/a;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/capcom/a/f;


# direct methods
.method public constructor <init>(Lcom/capcom/a/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/capcom/a/a;->a:Lcom/capcom/a/f;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/capcom/a/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/capcom/a/a;->a(Landroid/content/Context;Lcom/capcom/a/d;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/capcom/a/d;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/capcom/a/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/capcom/a/b;-><init>(Lcom/capcom/a/a;Landroid/content/Context;Lcom/capcom/a/d;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/capcom/a/b;->start()V

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/capcom/a/d;Ljava/lang/Object;)V
    .locals 7

    new-instance v0, Lcom/capcom/a/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/capcom/a/c;-><init>(Lcom/capcom/a/a;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/capcom/a/d;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/capcom/a/c;->start()V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/capcom/a/d;)V
    .locals 6

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "GET"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/capcom/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/capcom/a/d;Ljava/lang/Object;)V

    return-void
.end method
