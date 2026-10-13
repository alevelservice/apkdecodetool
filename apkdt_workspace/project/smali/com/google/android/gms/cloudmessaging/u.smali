.class final synthetic Lcom/google/android/gms/cloudmessaging/u;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Le/i/b/b/d/i;


# direct methods
.method constructor <init>(Le/i/b/b/d/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/u;->e:Le/i/b/b/d/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/u;->e:Le/i/b/b/d/i;

    invoke-static {v0}, Lcom/google/android/gms/cloudmessaging/a;->a(Le/i/b/b/d/i;)V

    return-void
.end method
