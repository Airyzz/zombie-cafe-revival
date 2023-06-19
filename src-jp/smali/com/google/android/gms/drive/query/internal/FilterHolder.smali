.class public Lcom/google/android/gms/drive/query/internal/FilterHolder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

.field final c:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

.field final d:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

.field final e:Lcom/google/android/gms/drive/query/internal/NotFilter;

.field final f:Lcom/google/android/gms/drive/query/internal/InFilter;

.field final g:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

.field final h:Lcom/google/android/gms/drive/query/internal/HasFilter;

.field private final i:Lcom/google/android/gms/drive/query/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/d;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/query/internal/ComparisonFilter;Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;Lcom/google/android/gms/drive/query/internal/LogicalFilter;Lcom/google/android/gms/drive/query/internal/NotFilter;Lcom/google/android/gms/drive/query/internal/InFilter;Lcom/google/android/gms/drive/query/internal/MatchAllFilter;Lcom/google/android/gms/drive/query/internal/HasFilter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->a:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->b:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    iput-object p3, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->c:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    iput-object p4, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->d:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    iput-object p5, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->e:Lcom/google/android/gms/drive/query/internal/NotFilter;

    iput-object p6, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->f:Lcom/google/android/gms/drive/query/internal/InFilter;

    iput-object p7, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->g:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    iput-object p8, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->h:Lcom/google/android/gms/drive/query/internal/HasFilter;

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->b:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->b:Lcom/google/android/gms/drive/query/internal/ComparisonFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->i:Lcom/google/android/gms/drive/query/a;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->c:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->c:Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->i:Lcom/google/android/gms/drive/query/a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->d:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->d:Lcom/google/android/gms/drive/query/internal/LogicalFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->i:Lcom/google/android/gms/drive/query/a;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->e:Lcom/google/android/gms/drive/query/internal/NotFilter;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->e:Lcom/google/android/gms/drive/query/internal/NotFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->i:Lcom/google/android/gms/drive/query/a;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->f:Lcom/google/android/gms/drive/query/internal/InFilter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->f:Lcom/google/android/gms/drive/query/internal/InFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->i:Lcom/google/android/gms/drive/query/a;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->g:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->g:Lcom/google/android/gms/drive/query/internal/MatchAllFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->i:Lcom/google/android/gms/drive/query/a;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->h:Lcom/google/android/gms/drive/query/internal/HasFilter;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->h:Lcom/google/android/gms/drive/query/internal/HasFilter;

    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->i:Lcom/google/android/gms/drive/query/a;

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one filter must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/d;->a(Lcom/google/android/gms/drive/query/internal/FilterHolder;Landroid/os/Parcel;I)V

    return-void
.end method
