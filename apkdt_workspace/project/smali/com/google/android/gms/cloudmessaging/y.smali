.class final Lcom/google/android/gms/cloudmessaging/y;
.super Le/i/b/b/b/a/e;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/cloudmessaging/a;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/y;->a:Lcom/google/android/gms/cloudmessaging/a;

    invoke-direct {p0, p2}, Le/i/b/b/b/a/e;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/y;->a:Lcom/google/android/gms/cloudmessaging/a;

    invoke-static {v0, p1}, Lcom/google/android/gms/cloudmessaging/a;->a(Lcom/google/android/gms/cloudmessaging/a;Landroid/os/Message;)V

    return-void
.end method
