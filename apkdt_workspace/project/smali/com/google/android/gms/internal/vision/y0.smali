.class final Lcom/google/android/gms/internal/vision/y0;
.super Lcom/google/android/gms/internal/vision/w0;
.source "com.google.android.gms:play-services-vision-common@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/w0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient g:I

.field private final transient h:I

.field private final synthetic zzls:Lcom/google/android/gms/internal/vision/w0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vision/w0;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/y0;->zzls:Lcom/google/android/gms/internal/vision/w0;

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/w0;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/vision/y0;->g:I

    .line 3
    iput p3, p0, Lcom/google/android/gms/internal/vision/y0;->h:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/y0;->h:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/j0;->a(II)I

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/y0;->zzls:Lcom/google/android/gms/internal/vision/w0;

    iget v1, p0, Lcom/google/android/gms/internal/vision/y0;->g:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/y0;->h:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/y0;->zze(II)Lcom/google/android/gms/internal/vision/w0;

    move-result-object p1

    return-object p1
.end method

.method final zzbz()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/y0;->zzls:Lcom/google/android/gms/internal/vision/w0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/t0;->zzbz()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzca()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/y0;->zzls:Lcom/google/android/gms/internal/vision/w0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/t0;->zzca()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/vision/y0;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzcb()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/y0;->zzls:Lcom/google/android/gms/internal/vision/w0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/t0;->zzca()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/vision/y0;->g:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/vision/y0;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zze(II)Lcom/google/android/gms/internal/vision/w0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/vision/w0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/y0;->h:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/vision/j0;->a(III)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/y0;->zzls:Lcom/google/android/gms/internal/vision/w0;

    iget v1, p0, Lcom/google/android/gms/internal/vision/y0;->g:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/vision/w0;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/w0;

    return-object p1
.end method
