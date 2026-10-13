.class public final Lcom/google/android/gms/internal/ads/zzcli;
.super Lcom/google/android/gms/internal/ads/zzva;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/ads/mk;

.field private final g:Lcom/google/android/gms/internal/ads/ys0;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/internal/ads/z10;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private i:Lcom/google/android/gms/internal/ads/zzur;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/mk;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzva;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/ys0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ys0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcli;->g:Lcom/google/android/gms/internal/ads/ys0;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/z10;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/z10;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcli;->h:Lcom/google/android/gms/internal/ads/z10;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcli;->f:Lcom/google/android/gms/internal/ads/mk;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcli;->g:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/ys0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ys0;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcli;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcli;->g:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ys0;->a(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/ys0;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaai;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcli;->g:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ys0;->a(Lcom/google/android/gms/internal/ads/zzaai;)Lcom/google/android/gms/internal/ads/ys0;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzabs;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcli;->h:Lcom/google/android/gms/internal/ads/z10;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/z10;->a(Lcom/google/android/gms/internal/ads/zzabs;)Lcom/google/android/gms/internal/ads/z10;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzabt;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcli;->h:Lcom/google/android/gms/internal/ads/z10;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/z10;->a(Lcom/google/android/gms/internal/ads/zzabt;)Lcom/google/android/gms/internal/ads/z10;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzace;Lcom/google/android/gms/internal/ads/zztw;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcli;->h:Lcom/google/android/gms/internal/ads/z10;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/z10;->a(Lcom/google/android/gms/internal/ads/zzace;)Lcom/google/android/gms/internal/ads/z10;

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcli;->g:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ys0;->a(Lcom/google/android/gms/internal/ads/zztw;)Lcom/google/android/gms/internal/ads/ys0;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzacf;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcli;->h:Lcom/google/android/gms/internal/ads/z10;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/z10;->a(Lcom/google/android/gms/internal/ads/zzacf;)Lcom/google/android/gms/internal/ads/z10;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzafj;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcli;->g:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ys0;->a(Lcom/google/android/gms/internal/ads/zzafj;)Lcom/google/android/gms/internal/ads/ys0;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzafp;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcli;->h:Lcom/google/android/gms/internal/ads/z10;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/z10;->a(Lcom/google/android/gms/internal/ads/zzafp;)Lcom/google/android/gms/internal/ads/z10;

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabz;Lcom/google/android/gms/internal/ads/zzaby;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcli;->h:Lcom/google/android/gms/internal/ads/z10;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/z10;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzabz;Lcom/google/android/gms/internal/ads/zzaby;)Lcom/google/android/gms/internal/ads/z10;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzur;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcli;->i:Lcom/google/android/gms/internal/ads/zzur;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzvs;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcli;->g:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ys0;->a(Lcom/google/android/gms/internal/ads/zzvs;)Lcom/google/android/gms/internal/ads/ys0;

    return-void
.end method

.method public final zzon()Lcom/google/android/gms/internal/ads/zzuw;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcli;->h:Lcom/google/android/gms/internal/ads/z10;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/z10;->a()Lcom/google/android/gms/internal/ads/x10;

    move-result-object v5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcli;->g:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/x10;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ys0;->a(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/ys0;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcli;->g:Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/x10;->g()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ys0;->b(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/ys0;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcli;->g:Lcom/google/android/gms/internal/ads/ys0;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ys0;->d()Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcli;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zztw;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zztw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ys0;->a(Lcom/google/android/gms/internal/ads/zztw;)Lcom/google/android/gms/internal/ads/ys0;

    .line 7
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzclh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcli;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcli;->f:Lcom/google/android/gms/internal/ads/mk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcli;->g:Lcom/google/android/gms/internal/ads/ys0;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcli;->i:Lcom/google/android/gms/internal/ads/zzur;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzclh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/mk;Lcom/google/android/gms/internal/ads/ys0;Lcom/google/android/gms/internal/ads/x10;Lcom/google/android/gms/internal/ads/zzur;)V

    return-object v0
.end method
