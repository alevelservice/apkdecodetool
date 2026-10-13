.class public final Lcom/google/android/gms/internal/ads/zzaae;
.super Lcom/google/android/gms/internal/ads/zzaar;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# instance fields
.field private final e:Landroid/graphics/drawable/Drawable;

.field private final f:Landroid/net/Uri;

.field private final g:D

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaar;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaae;->e:Landroid/graphics/drawable/Drawable;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaae;->f:Landroid/net/Uri;

    .line 4
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaae;->g:D

    .line 5
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzaae;->h:I

    .line 6
    iput p6, p0, Lcom/google/android/gms/internal/ads/zzaae;->i:I

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->i:I

    return v0
.end method

.method public final getScale()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->g:D

    return-wide v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->f:Landroid/net/Uri;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->h:I

    return v0
.end method

.method public final zzqf()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method
