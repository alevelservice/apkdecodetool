.class final Lcom/google/android/gms/internal/ads/y5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/ads/z5;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/z5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y5;->e:Lcom/google/android/gms/internal/ads/z5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/y5;->e:Lcom/google/android/gms/internal/ads/z5;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/z5;->a()Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/y5;->e:Lcom/google/android/gms/internal/ads/z5;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/z5;->a(Lcom/google/android/gms/internal/ads/z5;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/wa;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
