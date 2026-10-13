.class final Lcom/google/android/gms/internal/ads/gi1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:I

.field private final synthetic f:J

.field private final synthetic g:J

.field private final synthetic h:Lcom/google/android/gms/internal/ads/ci1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ci1;IJJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gi1;->h:Lcom/google/android/gms/internal/ads/ci1;

    iput p2, p0, Lcom/google/android/gms/internal/ads/gi1;->e:I

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/gi1;->f:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/gi1;->g:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gi1;->h:Lcom/google/android/gms/internal/ads/ci1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ci1;->a(Lcom/google/android/gms/internal/ads/ci1;)Lcom/google/android/gms/internal/ads/di1;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/ads/gi1;->e:I

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/gi1;->f:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/gi1;->g:J

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/di1;->a(IJJ)V

    return-void
.end method
