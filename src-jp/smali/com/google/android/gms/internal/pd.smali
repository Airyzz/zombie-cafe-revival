.class final Lcom/google/android/gms/internal/pd;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/android/gms/internal/pb;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/Context;

.field public final d:Lcom/google/android/gms/internal/nq;

.field public final e:Lcom/google/android/gms/internal/ev;

.field public f:Lcom/google/android/gms/internal/u;

.field public g:Lcom/google/android/gms/internal/hl;

.field public h:Lcom/google/android/gms/internal/al;

.field public i:Lcom/google/android/gms/internal/hd;

.field public j:Lcom/google/android/gms/internal/he;

.field public k:Lcom/google/android/gms/internal/ae;

.field public l:Lcom/google/android/gms/internal/fa;

.field public m:Lcom/google/android/gms/internal/en;

.field public n:Lcom/google/android/gms/internal/ei;

.field public o:Lcom/google/android/gms/internal/hj;

.field public p:Z

.field private q:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/al;Ljava/lang/String;Lcom/google/android/gms/internal/ev;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/pd;->o:Lcom/google/android/gms/internal/hj;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/pd;->p:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/pd;->q:Ljava/util/HashSet;

    iget-boolean v0, p2, Lcom/google/android/gms/internal/al;->e:Z

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/pd;->a:Lcom/google/android/gms/internal/pb;

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/pd;->h:Lcom/google/android/gms/internal/al;

    iput-object p3, p0, Lcom/google/android/gms/internal/pd;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/pd;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/pd;->e:Lcom/google/android/gms/internal/ev;

    new-instance v0, Lcom/google/android/gms/internal/nq;

    new-instance v1, Lcom/google/android/gms/internal/pc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/pc;-><init>(Lcom/google/android/gms/internal/pd;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/nq;-><init>(Lcom/google/android/gms/internal/ke;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/pd;->d:Lcom/google/android/gms/internal/nq;

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/pb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/pb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/pd;->a:Lcom/google/android/gms/internal/pb;

    iget-object v0, p0, Lcom/google/android/gms/internal/pd;->a:Lcom/google/android/gms/internal/pb;

    iget v1, p2, Lcom/google/android/gms/internal/al;->g:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pb;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/pd;->a:Lcom/google/android/gms/internal/pb;

    iget v1, p2, Lcom/google/android/gms/internal/al;->d:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pb;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/pd;->a:Lcom/google/android/gms/internal/pb;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/pb;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/pd;->q:Ljava/util/HashSet;

    return-object v0
.end method

.method public a(Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/pd;->q:Ljava/util/HashSet;

    return-void
.end method
