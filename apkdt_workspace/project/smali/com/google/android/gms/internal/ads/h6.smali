.class final Lcom/google/android/gms/internal/ads/h6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/ads/f6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/f6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/h6;->e:Lcom/google/android/gms/internal/ads/f6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/h6;->e:Lcom/google/android/gms/internal/ads/f6;

    const-string p2, "User canceled the download."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/k6;->a(Ljava/lang/String;)V

    return-void
.end method
