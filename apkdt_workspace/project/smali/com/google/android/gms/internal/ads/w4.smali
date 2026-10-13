.class final synthetic Lcom/google/android/gms/internal/ads/w4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/u4;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/w4;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/w4;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/w4;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/w4;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/u4;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
