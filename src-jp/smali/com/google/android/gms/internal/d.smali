.class Lcom/google/android/gms/internal/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/k;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/c;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/d;->a:Lcom/google/android/gms/internal/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/d;->a:Lcom/google/android/gms/internal/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/c;->a(Lcom/google/android/gms/internal/c;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/d;->a:Lcom/google/android/gms/internal/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/c;->b(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/d;->a:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/c;->a()V

    return-void
.end method
