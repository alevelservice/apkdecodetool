.class final synthetic Lcom/google/android/gms/cloudmessaging/l;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/cloudmessaging/f;

.field private final f:Lcom/google/android/gms/cloudmessaging/q;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/f;Lcom/google/android/gms/cloudmessaging/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/l;->e:Lcom/google/android/gms/cloudmessaging/f;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/l;->f:Lcom/google/android/gms/cloudmessaging/q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/l;->e:Lcom/google/android/gms/cloudmessaging/f;

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/l;->f:Lcom/google/android/gms/cloudmessaging/q;

    .line 2
    iget v1, v1, Lcom/google/android/gms/cloudmessaging/q;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cloudmessaging/f;->a(I)V

    return-void
.end method
