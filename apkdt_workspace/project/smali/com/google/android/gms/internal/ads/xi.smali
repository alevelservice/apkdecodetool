.class final synthetic Lcom/google/android/gms/internal/ads/xi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/zzbbu;

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbu;IIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xi;->e:Lcom/google/android/gms/internal/ads/zzbbu;

    iput p2, p0, Lcom/google/android/gms/internal/ads/xi;->f:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/xi;->g:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/xi;->h:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/xi;->i:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xi;->e:Lcom/google/android/gms/internal/ads/zzbbu;

    iget v1, p0, Lcom/google/android/gms/internal/ads/xi;->f:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/xi;->g:I

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/xi;->h:Z

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/xi;->i:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbbu;->zzb(IIZZ)V

    return-void
.end method
