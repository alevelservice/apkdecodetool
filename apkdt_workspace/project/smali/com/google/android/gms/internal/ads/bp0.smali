.class final synthetic Lcom/google/android/gms/internal/ads/bp0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/yo0;

.field private final f:Lcom/google/android/gms/internal/ads/qz0;

.field private final g:Lcom/google/android/gms/internal/ads/he;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/yo0;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/he;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bp0;->e:Lcom/google/android/gms/internal/ads/yo0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bp0;->f:Lcom/google/android/gms/internal/ads/qz0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bp0;->g:Lcom/google/android/gms/internal/ads/he;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bp0;->e:Lcom/google/android/gms/internal/ads/yo0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bp0;->f:Lcom/google/android/gms/internal/ads/qz0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bp0;->g:Lcom/google/android/gms/internal/ads/he;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/yo0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/he;)V

    return-void
.end method
