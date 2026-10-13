.class final synthetic Lcom/google/android/gms/cloudmessaging/v;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Le/i/b/b/d/a;


# instance fields
.field private final a:Lcom/google/android/gms/cloudmessaging/a;

.field private final b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/a;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/v;->a:Lcom/google/android/gms/cloudmessaging/a;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/v;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Le/i/b/b/d/h;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/v;->a:Lcom/google/android/gms/cloudmessaging/a;

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/v;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/cloudmessaging/a;->a(Landroid/os/Bundle;Le/i/b/b/d/h;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method
