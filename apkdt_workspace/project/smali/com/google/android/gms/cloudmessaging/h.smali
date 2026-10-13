.class final synthetic Lcom/google/android/gms/cloudmessaging/h;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/cloudmessaging/f;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cloudmessaging/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/h;->e:Lcom/google/android/gms/cloudmessaging/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/h;->e:Lcom/google/android/gms/cloudmessaging/f;

    invoke-virtual {v0}, Lcom/google/android/gms/cloudmessaging/f;->c()V

    return-void
.end method
