.class final Lcom/google/android/gms/internal/ads/o8;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/l8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const-string v0, "Pinged SB successfully."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/u8;->a(Ljava/lang/String;)V

    return-void
.end method
