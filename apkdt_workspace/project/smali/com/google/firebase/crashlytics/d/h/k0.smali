.class final synthetic Lcom/google/firebase/crashlytics/d/h/k0;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Le/i/b/b/d/a;


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/d/h/k0;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public static a(Ljava/util/concurrent/CountDownLatch;)Le/i/b/b/d/a;
    .locals 1

    new-instance v0, Lcom/google/firebase/crashlytics/d/h/k0;

    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/d/h/k0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    return-object v0
.end method


# virtual methods
.method public a(Le/i/b/b/d/h;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/h/k0;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/d/h/l0;->a(Ljava/util/concurrent/CountDownLatch;Le/i/b/b/d/h;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
