.class final synthetic Lcom/google/firebase/messaging/d;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@21.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/firebase/messaging/EnhancedIntentService;

.field private final f:Landroid/content/Intent;

.field private final g:Le/i/b/b/d/i;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/EnhancedIntentService;Landroid/content/Intent;Le/i/b/b/d/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/d;->e:Lcom/google/firebase/messaging/EnhancedIntentService;

    iput-object p2, p0, Lcom/google/firebase/messaging/d;->f:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/firebase/messaging/d;->g:Le/i/b/b/d/i;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/messaging/d;->e:Lcom/google/firebase/messaging/EnhancedIntentService;

    iget-object v1, p0, Lcom/google/firebase/messaging/d;->f:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/firebase/messaging/d;->g:Le/i/b/b/d/i;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/messaging/EnhancedIntentService;->lambda$processIntent$0$EnhancedIntentService(Landroid/content/Intent;Le/i/b/b/d/i;)V

    return-void
.end method
