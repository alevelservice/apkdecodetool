.class final synthetic Lcom/google/android/gms/internal/ads/ch0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/dh0;

.field private final f:Lcom/google/android/gms/internal/ads/vs0;

.field private final g:Lcom/google/android/gms/internal/ads/ns0;

.field private final h:Lcom/google/android/gms/internal/ads/bd0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dh0;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ch0;->e:Lcom/google/android/gms/internal/ads/dh0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ch0;->f:Lcom/google/android/gms/internal/ads/vs0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ch0;->g:Lcom/google/android/gms/internal/ads/ns0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ch0;->h:Lcom/google/android/gms/internal/ads/bd0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ch0;->e:Lcom/google/android/gms/internal/ads/dh0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ch0;->f:Lcom/google/android/gms/internal/ads/vs0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ch0;->g:Lcom/google/android/gms/internal/ads/ns0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ch0;->h:Lcom/google/android/gms/internal/ads/bd0;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dh0;->d:Lcom/google/android/gms/internal/ads/bh0;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/bh0;->a(Lcom/google/android/gms/internal/ads/bh0;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lcom/google/android/gms/internal/ads/bd0;)V

    return-void
.end method
