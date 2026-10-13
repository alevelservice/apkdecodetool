.class final synthetic Lcom/google/firebase/messaging/m;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/firebase/messaging/FirebaseMessaging$a;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/m;->e:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/messaging/m;->e:Lcom/google/firebase/messaging/FirebaseMessaging$a;

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging$a;->d()V

    return-void
.end method
