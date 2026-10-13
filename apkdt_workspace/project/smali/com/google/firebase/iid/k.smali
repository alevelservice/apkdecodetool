.class final synthetic Lcom/google/firebase/iid/k;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-iid@@21.0.1"

# interfaces
.implements Le/i/b/b/d/c;


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/k;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public a(Le/i/b/b/d/h;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/iid/k;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p1}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ljava/util/concurrent/CountDownLatch;Le/i/b/b/d/h;)V

    return-void
.end method
