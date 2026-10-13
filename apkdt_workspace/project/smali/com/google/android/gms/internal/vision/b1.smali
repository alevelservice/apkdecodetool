.class final Lcom/google/android/gms/internal/vision/b1;
.super Lcom/google/android/gms/internal/vision/a1;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/vision/a1<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient g:Lcom/google/android/gms/internal/vision/x0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/x0<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient h:[Ljava/lang/Object;

.field private final transient i:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vision/x0;[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/vision/x0<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/a1;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/b1;->g:Lcom/google/android/gms/internal/vision/x0;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/vision/b1;->h:[Ljava/lang/Object;

    .line 4
    iput p4, p0, Lcom/google/android/gms/internal/vision/b1;->i:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/vision/b1;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/google/android/gms/internal/vision/b1;->i:I

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/vision/b1;)[Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/vision/b1;->h:[Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/vision/b1;->g:Lcom/google/android/gms/internal/vision/x0;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/vision/x0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/b1;->zzby()Lcom/google/android/gms/internal/vision/i1;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/b1;->i:I

    return v0
.end method

.method final zza([Ljava/lang/Object;I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/a1;->zzcc()Lcom/google/android/gms/internal/vision/w0;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/vision/w0;->zza([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final zzby()Lcom/google/android/gms/internal/vision/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/vision/i1<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/a1;->zzcc()Lcom/google/android/gms/internal/vision/w0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/w0;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/i1;

    return-object v0
.end method

.method final zzch()Lcom/google/android/gms/internal/vision/w0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/vision/w0<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/e1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/e1;-><init>(Lcom/google/android/gms/internal/vision/b1;)V

    return-object v0
.end method
