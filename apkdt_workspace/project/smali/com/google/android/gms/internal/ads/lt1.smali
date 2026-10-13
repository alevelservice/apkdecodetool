.class final Lcom/google/android/gms/internal/ads/lt1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:J

.field private final synthetic g:Lcom/google/android/gms/internal/ads/uq1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/uq1;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lt1;->g:Lcom/google/android/gms/internal/ads/uq1;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lt1;->e:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/lt1;->f:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt1;->g:Lcom/google/android/gms/internal/ads/uq1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uq1;->a(Lcom/google/android/gms/internal/ads/uq1;)Lcom/google/android/gms/internal/ads/w1$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lt1;->e:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/lt1;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/w1$a;->a(Ljava/lang/String;J)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lt1;->g:Lcom/google/android/gms/internal/ads/uq1;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uq1;->a(Lcom/google/android/gms/internal/ads/uq1;)Lcom/google/android/gms/internal/ads/w1$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lt1;->g:Lcom/google/android/gms/internal/ads/uq1;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/uq1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/w1$a;->a(Ljava/lang/String;)V

    return-void
.end method
