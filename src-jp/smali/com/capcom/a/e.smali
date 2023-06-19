.class public Lcom/capcom/a/e;
.super Ljava/lang/Throwable;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/capcom/a/e;->a:I

    iput-object p3, p0, Lcom/capcom/a/e;->b:Ljava/lang/String;

    return-void
.end method
