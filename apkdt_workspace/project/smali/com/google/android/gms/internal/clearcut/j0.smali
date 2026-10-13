.class final Lcom/google/android/gms/internal/clearcut/j0;
.super Lcom/google/android/gms/internal/clearcut/h0;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/clearcut/h0;-><init>(Lcom/google/android/gms/internal/clearcut/i0;)V

    const p1, 0x7fffffff

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/j0;->e:I

    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/clearcut/j0;->a:I

    iput p2, p0, Lcom/google/android/gms/internal/clearcut/j0;->c:I

    iget p1, p0, Lcom/google/android/gms/internal/clearcut/j0;->c:I

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/j0;->d:I

    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/clearcut/i0;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/clearcut/j0;-><init>([BIIZ)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/j0;->c:I

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/j0;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final b(I)I
    .locals 3

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/clearcut/j0;->a()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/clearcut/j0;->e:I

    if-gt p1, v0, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/j0;->e:I

    iget p1, p0, Lcom/google/android/gms/internal/clearcut/j0;->a:I

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/j0;->b:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/j0;->a:I

    iget p1, p0, Lcom/google/android/gms/internal/clearcut/j0;->a:I

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/j0;->d:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/google/android/gms/internal/clearcut/j0;->e:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/clearcut/j0;->b:I

    iget v1, p0, Lcom/google/android/gms/internal/clearcut/j0;->b:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/j0;->a:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/clearcut/j0;->b:I

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/j1;->zzbl()Lcom/google/android/gms/internal/clearcut/j1;

    move-result-object p1

    throw p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/clearcut/j1;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/clearcut/j1;-><init>(Ljava/lang/String;)V

    throw p1
.end method
