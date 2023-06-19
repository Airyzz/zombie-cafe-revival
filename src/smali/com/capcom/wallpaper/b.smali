.class final Lcom/capcom/wallpaper/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/capcom/wallpaper/a;


# direct methods
.method constructor <init>(Lcom/capcom/wallpaper/a;)V
    .locals 0

    iput-object p1, p0, Lcom/capcom/wallpaper/b;->a:Lcom/capcom/wallpaper/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/capcom/wallpaper/b;->a:Lcom/capcom/wallpaper/a;

    invoke-virtual {v0}, Lcom/capcom/wallpaper/a;->a()V

    return-void
.end method
