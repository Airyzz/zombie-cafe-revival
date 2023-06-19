.class Lcom/google/android/gms/internal/il;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/db;

.field final synthetic b:Lcom/google/android/gms/internal/ik;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ik;Lcom/google/android/gms/internal/db;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/il;->b:Lcom/google/android/gms/internal/ik;

    iput-object p2, p0, Lcom/google/android/gms/internal/il;->a:Lcom/google/android/gms/internal/db;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/il;->a:Lcom/google/android/gms/internal/db;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/db;->k()V

    return-void
.end method
