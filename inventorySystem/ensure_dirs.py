from django.core.management.base import BaseCommand
from pathlib import Path

class Command(BaseCommand):
    help = 'Ensure MEDIA_ROOT and STATIC_ROOT directories exist'

    def handle(self, *args, **kwargs):
        media_root = Path('media')
        media_root.mkdir(parents=True, exist_ok=True)
        self.stdout.write(self.style.SUCCESS('Successfully created media directory'))

        static_root = Path('staticfiles')
        static_root.mkdir(parents=True, exist_ok=True)
        self.stdout.write(self.style.SUCCESS('Successfully created staticfiles directory'))
