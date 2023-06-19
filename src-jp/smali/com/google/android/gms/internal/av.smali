.class final Lcom/google/android/gms/internal/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/bb;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ii;Ljava/util/Map;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ii;->d()Lcom/google/android/gms/internal/db;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "A GMSG tried to close something that wasn\'t an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/ig;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/db;->a()V

    goto :goto_0
.end method
