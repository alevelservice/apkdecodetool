.class final Lcom/google/android/gms/internal/ads/kx0;
.super Lcom/google/android/gms/internal/ads/jx0;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/jx0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient g:I

.field private final transient h:I

.field private final synthetic zzgoo:Lcom/google/android/gms/internal/ads/jx0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/jx0;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kx0;->zzgoo:Lcom/google/android/gms/internal/ads/jx0;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/jx0;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/ads/kx0;->g:I

    .line 3
    iput p3, p0, Lcom/google/android/gms/internal/ads/kx0;->h:I

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
    iget v0, p0, Lcom/google/android/gms/internal/ads/kx0;->h:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/uw0;->a(II)I

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kx0;->zzgoo:Lcom/google/android/gms/internal/ads/jx0;

    iget v1, p0, Lcom/google/android/gms/internal/ads/kx0;->g:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/kx0;->h:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/kx0;->zzt(II)Lcom/google/android/gms/internal/ads/jx0;

    move-result-object p1

    return-object p1
.end method

.method final zzaof()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kx0;->zzgoo:Lcom/google/android/gms/internal/ads/jx0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ex0;->zzaof()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final zzaog()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kx0;->zzgoo:Lcom/google/android/gms/internal/ads/jx0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ex0;->zzaog()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/kx0;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzaoh()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kx0;->zzgoo:Lcom/google/android/gms/internal/ads/jx0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ex0;->zzaog()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/kx0;->g:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/kx0;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method final zzaoj()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzt(II)Lcom/google/android/gms/internal/ads/jx0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/ads/jx0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/kx0;->h:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/uw0;->a(III)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kx0;->zzgoo:Lcom/google/android/gms/internal/ads/jx0;

    iget v1, p0, Lcom/google/android/gms/internal/ads/kx0;->g:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/jx0;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/jx0;

    return-object p1
.end method
