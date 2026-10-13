.class final Lcom/google/android/gms/internal/ads/j4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/je;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/he;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/i3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/h4;Lcom/google/android/gms/internal/ads/he;Lcom/google/android/gms/internal/ads/i3;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/j4;->a:Lcom/google/android/gms/internal/ads/he;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/j4;->b:Lcom/google/android/gms/internal/ads/i3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j4;->a:Lcom/google/android/gms/internal/ads/he;

    new-instance v1, Lcom/google/android/gms/internal/ads/u3;

    const-string v2, "Unable to obtain a JavascriptEngine."

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/u3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/he;->a(Ljava/lang/Throwable;)Z

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j4;->b:Lcom/google/android/gms/internal/ads/i3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/i3;->c()V

    return-void
.end method
