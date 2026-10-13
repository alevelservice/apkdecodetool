.class final synthetic Lcom/google/firebase/messaging/k;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.1"

# interfaces
.implements Le/i/b/b/d/g;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/k;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Le/i/b/b/d/h;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/k;->a:Ljava/lang/String;

    check-cast p1, Lcom/google/firebase/messaging/d0;

    invoke-static {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->b(Ljava/lang/String;Lcom/google/firebase/messaging/d0;)Le/i/b/b/d/h;

    move-result-object p1

    return-object p1
.end method
