.class final synthetic Lcom/google/firebase/messaging/r;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.1"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final e:Lcom/google/firebase/messaging/s;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/r;->e:Lcom/google/firebase/messaging/s;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/r;->e:Lcom/google/firebase/messaging/s;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/s;->i()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
