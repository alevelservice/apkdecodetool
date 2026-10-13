.class final synthetic Lcom/google/android/gms/internal/ads/e9;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/a9;

.field private final f:Lcom/google/android/gms/internal/ads/q9;

.field private final g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/a9;Lcom/google/android/gms/internal/ads/q9;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/e9;->e:Lcom/google/android/gms/internal/ads/a9;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/e9;->f:Lcom/google/android/gms/internal/ads/q9;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/e9;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/e9;->e:Lcom/google/android/gms/internal/ads/a9;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/e9;->f:Lcom/google/android/gms/internal/ads/q9;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/e9;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/a9;->a(Lcom/google/android/gms/internal/ads/q9;Ljava/lang/String;)V

    return-void
.end method
